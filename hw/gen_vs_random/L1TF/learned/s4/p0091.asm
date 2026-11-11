.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt eax, ebx
add al, 61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
setnle bl
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], al
adc bl, 64
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc dx, 92
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -79
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 37
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], bx
cmovnle eax, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
