.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -22
or rax, 1020005579
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and ax, 31082
xor rax, -404206377
cmovp edi, edi
cmovbe edi, eax
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, rbx
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
xor sil, -15
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and cl, 118 # instrumentation
cmovp esi, ebx
cmovz esi, eax
bt rcx, rbx
and al, -40 # instrumentation
cmovle di, ax
test ecx, -1843375753
cmovnle rax, rsi
xor sil, 110
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
xor bl, -27
and rbx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
