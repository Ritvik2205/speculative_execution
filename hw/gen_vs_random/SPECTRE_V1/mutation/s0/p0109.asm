.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
or ax, 12618
setnp cl
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], al
or dil, cl
and rax, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rax], dx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
dec dl
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 6
mov si, 9258
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 98
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
