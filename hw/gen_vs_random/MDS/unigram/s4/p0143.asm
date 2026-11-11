.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
cmovnle rdi, rax
xor dx, ax
cmovb rax, rdi
and cl, al
test rbx, 70
xor cl, 93
cmovnz di, cx
and rdx, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rdx]
cmovnb eax, eax
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rcx], 43
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
cmovp cx, cx
and bl, -30 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl si, word ptr [r14 + rax]
cmovnb rdi, rdi
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
