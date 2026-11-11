.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
sub bl, -96
and rdx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdx]
lea esi, qword ptr [rbx]
lea cx, qword ptr [rbx + rax + 15]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 57
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
