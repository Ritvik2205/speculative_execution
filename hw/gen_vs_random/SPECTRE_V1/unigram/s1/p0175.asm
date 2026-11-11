.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor rdi, rcx
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], -86
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
bswap rax
xor rbx, rax
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 23
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xchg rsi, rax
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
and al, 33
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdi], dx
lea ax, qword ptr [rax]
add al, 10
and rdx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
