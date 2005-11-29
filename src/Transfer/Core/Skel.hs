module Transfer.Core.Skel where

-- Haskell module generated by the BNF converter

import Transfer.Core.Abs
import Transfer.ErrM
type Result = Err String

failure :: Show a => a -> Result
failure x = Bad $ "Undefined case: " ++ show x

transTree :: Tree c -> Result
transTree t = case t of
  Module decls -> failure t
  DataDecl cident exp consdecls -> failure t
  TypeDecl cident exp -> failure t
  ValueDecl cident exp -> failure t
  ConsDecl cident exp -> failure t
  PCons cident patterns -> failure t
  PVar patternvariable -> failure t
  PRec fieldpatterns -> failure t
  PType  -> failure t
  PStr str -> failure t
  PInt n -> failure t
  FieldPattern cident pattern -> failure t
  PVVar cident -> failure t
  PVWild  -> failure t
  ELet letdefs exp -> failure t
  ECase exp cases -> failure t
  EAbs patternvariable exp -> failure t
  EPi patternvariable exp0 exp1 -> failure t
  EApp exp0 exp1 -> failure t
  EProj exp cident -> failure t
  EEmptyRec  -> failure t
  ERecType fieldtypes -> failure t
  ERec fieldvalues -> failure t
  EVar cident -> failure t
  EType  -> failure t
  EStr str -> failure t
  EInt n -> failure t
  EMeta tmeta -> failure t
  LetDef cident exp0 exp1 -> failure t
  Case pattern exp -> failure t
  FieldType cident exp -> failure t
  FieldValue cident exp -> failure t
  TMeta str -> failure t
  CIdent str -> failure t

transModule :: Module -> Result
transModule t = case t of
  Module decls -> failure t

transDecl :: Decl -> Result
transDecl t = case t of
  DataDecl cident exp consdecls -> failure t
  TypeDecl cident exp -> failure t
  ValueDecl cident exp -> failure t

transConsDecl :: ConsDecl -> Result
transConsDecl t = case t of
  ConsDecl cident exp -> failure t

transPattern :: Pattern -> Result
transPattern t = case t of
  PCons cident patterns -> failure t
  PVar patternvariable -> failure t
  PRec fieldpatterns -> failure t
  PType  -> failure t
  PStr str -> failure t
  PInt n -> failure t

transFieldPattern :: FieldPattern -> Result
transFieldPattern t = case t of
  FieldPattern cident pattern -> failure t

transPatternVariable :: PatternVariable -> Result
transPatternVariable t = case t of
  PVVar cident -> failure t
  PVWild  -> failure t

transExp :: Exp -> Result
transExp t = case t of
  ELet letdefs exp -> failure t
  ECase exp cases -> failure t
  EAbs patternvariable exp -> failure t
  EPi patternvariable exp0 exp1 -> failure t
  EApp exp0 exp1 -> failure t
  EProj exp cident -> failure t
  EEmptyRec  -> failure t
  ERecType fieldtypes -> failure t
  ERec fieldvalues -> failure t
  EVar cident -> failure t
  EType  -> failure t
  EStr str -> failure t
  EInt n -> failure t
  EMeta tmeta -> failure t

transLetDef :: LetDef -> Result
transLetDef t = case t of
  LetDef cident exp0 exp1 -> failure t

transCase :: Case -> Result
transCase t = case t of
  Case pattern exp -> failure t

transFieldType :: FieldType -> Result
transFieldType t = case t of
  FieldType cident exp -> failure t

transFieldValue :: FieldValue -> Result
transFieldValue t = case t of
  FieldValue cident exp -> failure t

transTMeta :: TMeta -> Result
transTMeta t = case t of
  TMeta str -> failure t

transCIdent :: CIdent -> Result
transCIdent t = case t of
  CIdent str -> failure t

