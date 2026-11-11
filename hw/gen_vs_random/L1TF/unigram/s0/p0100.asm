.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rbx]
cmp dil, dil
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 59
lea rsi, qword ptr [rax + rbx + 52]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 82
sub rdx, 91
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
cmovbe edi, ebx
inc dil
xchg ecx, ebx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
