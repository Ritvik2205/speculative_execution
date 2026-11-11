.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and ax, -16061
xor rax, -91
and rax, 4
jmp .bb_0.1
.bb_0.1:
test eax, 298249463
and rcx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
and bx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], bx
xor dil, -5
and rdi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rdi]
xor bl, dil
xor di, -83
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, esi
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
xor dil, cl
test ecx, -1843375753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
