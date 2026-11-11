.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, bl
add rax, -845342150
and rsi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rsi]
lea rcx, qword ptr [rsi + rax + 35]
bswap rsi
test dil, sil
add al, -62 # instrumentation
setnb dl
cmovnl esi, edx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
setnb cl
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
