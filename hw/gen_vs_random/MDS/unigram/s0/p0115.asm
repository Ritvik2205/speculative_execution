.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 91
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
bts rsi, 206
cmovns ebx, edx
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rdx]
cmovz eax, eax
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], al
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rax
test rax, rsi
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
xor dl, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -46
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 117
xor al, al
bts dx, si
and dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
