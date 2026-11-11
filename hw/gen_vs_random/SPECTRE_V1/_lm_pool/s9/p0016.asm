.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], sil
lea rbx, qword ptr [rdx + rsi + 34562]
cmp al, 77
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
xor sil, bl
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 19
inc rcx
setns bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
