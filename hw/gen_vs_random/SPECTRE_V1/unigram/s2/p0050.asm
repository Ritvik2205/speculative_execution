.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx ebx, byte ptr [r14 + rbx]
add al, -26 # instrumentation
cmovle rsi, rax
lea si, qword ptr [rsi + rax]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rsi
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovno cx, ax
adc esi, ebx
and sil, dil
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
mov cl, al
and si, 62
imul rcx
sbb cl, 105
bswap rcx
and rdx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
