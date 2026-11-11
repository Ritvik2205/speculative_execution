.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
sbb bl, dil
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 90
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], cl
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
lea rdi, qword ptr [rax + rcx]
test rcx, 34
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
