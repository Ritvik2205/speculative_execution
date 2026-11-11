.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr edx, eax
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], eax
and rdx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rdx]
mov dil, al
sub edx, edx
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 51
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
xor edx, edi
add al, -65 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
test dl, 84
add al, 83 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
