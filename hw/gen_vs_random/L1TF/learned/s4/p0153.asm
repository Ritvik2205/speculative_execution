.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
sub dl, 41
test bl, 45
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 5
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
jmp .bb_0.3
.bb_0.3:
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and edx, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
