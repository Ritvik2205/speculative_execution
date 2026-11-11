.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dl, 19
sub bl, 15
and rcx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rcx]
add di, ax
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
imul edi, eax
and rax, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rax], rcx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 1 # instrumentation
add bl, -9 # instrumentation
cmovs ax, dx
add al, 87 # instrumentation
cmovo rdx, rbx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdi]
bts dx, 19
lea rcx, qword ptr [rdx]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], ax
add dl, -10 # instrumentation
cmovns esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
