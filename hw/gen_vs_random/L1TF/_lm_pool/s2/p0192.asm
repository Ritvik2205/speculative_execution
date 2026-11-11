.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
and al, dl
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], 94
not al
bt edi, ebx
and rax, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rdx
lea ax, qword ptr [rbx + rsi]
jmp .bb_0.2
.bb_0.2:
lea cx, qword ptr [rbx + rcx + 44]
and rcx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rcx]
setz cl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
