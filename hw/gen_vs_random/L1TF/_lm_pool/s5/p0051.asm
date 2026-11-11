.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, 8
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
xor dl, cl
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
and al, sil
lea ebx, qword ptr [rdx]
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 5
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], -1923530546
xor rax, 20
and rax, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
