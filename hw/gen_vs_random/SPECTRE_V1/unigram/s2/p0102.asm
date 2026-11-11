.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
inc rax
and rdx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdx], dl
cmovo si, di
add al, -8 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 76
and rdi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rdi], cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rsi
mov al, sil
bswap rsi
nop
and rcx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], ax
cmovnb rsi, rdx
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rsi], cx
mul si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
