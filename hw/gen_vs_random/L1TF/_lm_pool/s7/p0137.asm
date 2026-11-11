.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
sbb al, dl
jmp .bb_0.1
.bb_0.1:
test al, bl
and al, -68
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdi], 74
and rdi, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdi]
and dl, 73
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dil
cmp cl, -89
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
