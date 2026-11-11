.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rax]
add al, -46
jmp .bb_0.1
.bb_0.1:
lea di, qword ptr [rsi]
sub sil, -99
jmp .bb_0.2
.bb_0.2:
test al, -82
jmp .bb_0.3
.bb_0.3:
add bl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
test al, 15
sub al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
