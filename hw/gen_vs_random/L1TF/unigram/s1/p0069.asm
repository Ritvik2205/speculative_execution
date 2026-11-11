.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc di, 237
and rcx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rcx]
sub sil, al
and rax, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rax]
adc dl, sil
and rdi, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rdi]
or dl, 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
mov ax, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], 55
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], edx
adc dl, 10
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rbx], 17
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
