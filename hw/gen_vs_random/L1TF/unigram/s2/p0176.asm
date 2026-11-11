.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bx, si
mul rdi
and rdx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rdx]
cmp al, dil
and rdi, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], bl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 24
and rdi, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdi]
mul edi
add al, -79 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rax]
xor edi, 76
cmovnbe rbx, rdi
test edi, edx
cmp bl, al
and rcx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
