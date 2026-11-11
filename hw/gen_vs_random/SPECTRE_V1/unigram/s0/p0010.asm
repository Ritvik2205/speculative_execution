.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, cl
cmovo dx, ax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], al
setle cl
sub dil, al
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
sub dx, -23
setnle dil
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rsi], rax
mul dil
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
add cl, 112 # instrumentation
sbb edx, 85
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
cmp bx, 95
test sil, -31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
