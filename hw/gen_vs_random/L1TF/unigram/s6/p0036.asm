.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rax]
cmovl edi, esi
and rdx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
cmovnbe edi, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], dl
btc dx, si
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rax]
bt eax, edi
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
