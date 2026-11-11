.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dil, sil
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rdi
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], edx
btr rdi, 54
cmp rax, -1877933118
sbb al, dl
lea rbx, qword ptr [rdx + rax + 24]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
lea rsi, qword ptr [rbx + rax + 47]
and rbx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rbx]
bswap rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
