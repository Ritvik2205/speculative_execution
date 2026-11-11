.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
lea ebx, qword ptr [rdx + rdx]
add al, 83 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdi]
cmp rcx, rcx
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], dil
or rax, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rax
xor cl, 89
test ecx, eax
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
