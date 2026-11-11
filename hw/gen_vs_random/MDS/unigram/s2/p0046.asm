.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 55
or esi, -110
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
cmovz rdx, rbx
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btc qword ptr [r14 + rcx], rbx
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 39
test dl, 48
cmovz rdx, rbx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 1
or dl, -8
xor al, sil
and dl, 4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
