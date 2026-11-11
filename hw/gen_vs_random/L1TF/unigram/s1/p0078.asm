.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdi], 15
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], rsi
adc ecx, 52
and rcx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rcx]
btc di, si
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and sil, 110
mov dil, al
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rdi]
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdi
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
add al, 61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdi]
add al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
