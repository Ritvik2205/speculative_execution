.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, dl
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and bl, -119
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rdi]
test cl, al
adc eax, 1019803307
inc eax
cmp dil, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
test esi, -2111618709
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
test al, cl
and rax, 0b1111111111111 # instrumentation
cmovno esi, dword ptr [r14 + rax]
and dil, -23
and al, bl
test edx, -38580719
or bl, 80
cmp cl, dil
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], rsi
xchg dl, sil
cmp al, sil
or sil, -47
sub dl, 107
dec dl
cmp dil, dl
sbb sil, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
or eax, -1341747033
not ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
