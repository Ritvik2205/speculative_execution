.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, ebx
cmovnbe cx, dx
and rax, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 18
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], edx
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
bts rax, 149
and rdx, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
btr si, 78
and dl, -107 # instrumentation
cmovz rcx, rbx
cmovo ecx, esi
and cl, 122 # instrumentation
cmovnb rcx, rdi
cmovs esi, ebx
bt esi, 94
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 79
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
