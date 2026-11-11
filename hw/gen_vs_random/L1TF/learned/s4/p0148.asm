.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rsi]
xor rax, 20
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add bl, 62 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
jmp .bb_0.2
.bb_0.2:
jle .bb_0.3
jmp .exit_0
.bb_0.3:
add bx, 50
and rax, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rax]
cmp al, sil
sbb sil, 19
test cx, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
