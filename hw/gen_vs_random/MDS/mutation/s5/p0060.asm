.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
or rax, -689609688
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
cmovbe edi, eax
and rbx, rbx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
cmovp edi, edi
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
xor sil, 27
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
xor rax, -773894210
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and ax, 27170
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
