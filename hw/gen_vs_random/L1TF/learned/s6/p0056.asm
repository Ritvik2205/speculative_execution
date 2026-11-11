.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ecx, edi
cmovb ax, di
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rdi]
or al, -2
and dil, -82
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
xor sil, bl
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 47
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
