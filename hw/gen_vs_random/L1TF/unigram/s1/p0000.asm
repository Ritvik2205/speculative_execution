.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 118
add al, 65 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
movsx cx, dil
and rax, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rsi
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
and rax, 0b1111111111111 # instrumentation
dec word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
add cl, -84 # instrumentation
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
add dl, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc sil, byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdx]
add bl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
add dl, 43 # instrumentation
adc al, al
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rdi]
add dl, 85
xchg ecx, esi
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
