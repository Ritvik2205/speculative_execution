.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rdi, 70
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
and rsi, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rsi]
and bl, 89
bts ecx, 164
jmp .bb_0.1
.bb_0.1:
or sil, -44
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
