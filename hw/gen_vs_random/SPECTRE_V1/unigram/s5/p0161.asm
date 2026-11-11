.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
cmovbe cx, di
or bx, 9
or si, si
and rbx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rbx]
imul al
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
xor dl, bl
add dl, 38 # instrumentation
setp bl
cmovb eax, ecx
and rcx, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
lea cx, qword ptr [rax + rax + 48724]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
add eax, -55403434
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
