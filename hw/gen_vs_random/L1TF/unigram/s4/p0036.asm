.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rdx, qword ptr [rax + rdi]
mul dil
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
add dx, di
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
setb dil
add dl, -39 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
mov cl, bl
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
movzx ebx, di
lea ecx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 5
and rcx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
