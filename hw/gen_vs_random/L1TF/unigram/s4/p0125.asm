.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
cmovnbe ebx, eax
sub dl, cl
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
btr edx, 7
and rax, -109
or ebx, edi
cmp bl, 123
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rsi]
xchg ebx, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
