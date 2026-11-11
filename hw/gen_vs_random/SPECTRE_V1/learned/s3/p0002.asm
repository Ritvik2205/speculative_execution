.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and rdx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rdx]
sbb cl, 105
setno dl
or cl, -62
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
sub dil, -32
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rsi]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
sub dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
