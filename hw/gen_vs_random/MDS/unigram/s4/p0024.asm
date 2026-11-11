.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 25
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btc word ptr [r14 + rdi], si
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], si
bt bx, 85
btc dx, 38
and bx, di
cmovnle rax, rbx
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -116
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], sil
and cl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
and sil, dl
and edi, 70
and rsi, 0b1111111111111 # instrumentation
cmovnl ax, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 53
cmovnb rax, rcx
or ax, 19243
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
