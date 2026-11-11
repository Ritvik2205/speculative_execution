.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
cmovo cx, di
lea eax, qword ptr [rdi + rdi + 10]
and rax, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rax]
movzx ebx, ax
jb .bb_0.1
jmp .exit_0
.bb_0.1:
bt ecx, 204
and rcx, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rcx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rbx]
test dil, cl
imul esi, edx, 81
and rdi, 0b1111111111111 # instrumentation
movsx rdi, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], 26
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rax, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
