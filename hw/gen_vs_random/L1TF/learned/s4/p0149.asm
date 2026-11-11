.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rdi]
lea rax, qword ptr [rdx + rsi]
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
sub cl, 86
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
lea bx, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rbx]
sub bl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
