.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
bswap rsi
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 62
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and dl, -109
add dil, cl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rdx], ax
and rax, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rax]
sbb ecx, 72
add al, 123 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdx]
cmovnl edx, esi
and rdx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rdx]
add bl, -92 # instrumentation
cmovs bx, cx
sub sil, cl
add bl, -43 # instrumentation
adc ax, 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
