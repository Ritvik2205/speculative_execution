.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
xor sil, 110
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], edx
cmovp edi, edi
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and rdx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdx]
xor rax, -773894210
and rdi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], edi
and rsi, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rsi]
and rbx, rbx
and al, -23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rcx]
cmovbe edi, eax
or rax, -1523798580
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rdi]
and ax, 339
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
