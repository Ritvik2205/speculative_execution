.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rbx, 60
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rbx], 87
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
or dl, 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], edx
lea edx, qword ptr [rdi + rax]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
setnle dl
xor dx, 24
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], al
cmovl ax, bx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 36
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
