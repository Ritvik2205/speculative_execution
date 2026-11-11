.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rdi, 0b1111111111111 # instrumentation
cmovl dx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rbx]
or dl, dil
btc rsi, rax
bts cx, 177
or dl, -97
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
bt ax, cx
and al, -83 # instrumentation
cmovnp rax, rsi
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
or ebx, -15
cmovl rcx, rax
not rbx
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
and al, -72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rsi]
cmovle cx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
