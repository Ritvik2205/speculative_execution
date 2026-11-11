.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], -3
and rax, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], al
add esi, 44
xor rbx, 50
neg ebx
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 38
cmovno rdx, rdx
cmovp ax, dx
jns .bb_0.1
jmp .exit_0
.bb_0.1:
cmovo rbx, rbx
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
cmovnb rcx, rdx
and rdi, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rdi]
imul dl
lea ecx, qword ptr [rdx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
