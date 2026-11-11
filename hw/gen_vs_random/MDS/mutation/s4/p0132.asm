.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rdi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ebx
and bl, 53 # instrumentation
cmovnl rbx, rbx
cmovb cx, di
btr bx, dx
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
or cl, cl
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rcx
cmovp dx, cx
and rdi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
and dl, 116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
cmovle rcx, rcx
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], rdi
cmovbe rcx, rcx
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bts word ptr [r14 + rbx], bx
and dl, -127 # instrumentation
cmovno esi, ebx
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 3
bts ecx, 184
cmovb bx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
