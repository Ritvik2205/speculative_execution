.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rbx, 58
and rax, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rax]
movsx rdx, di
sub al, dil
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
mov dx, 48
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rbx]
cmovp rbx, rcx
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
cmovb cx, si
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -54
and rax, 0b1111111111111 # instrumentation
cmovle rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
lea bx, qword ptr [rbx]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
