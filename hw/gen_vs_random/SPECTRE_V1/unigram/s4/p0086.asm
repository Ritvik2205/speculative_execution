.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rcx]
xor esi, 80
lea rbx, qword ptr [rdx]
test dil, dl
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
cmovb dx, dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdi
and rax, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rax]
dec rdi
setno al
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdx]
or bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
