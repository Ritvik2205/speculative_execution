.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
btr bx, di
and si, 92
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
jmp .bb_0.1
.bb_0.1:
and dil, dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
cmp di, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
