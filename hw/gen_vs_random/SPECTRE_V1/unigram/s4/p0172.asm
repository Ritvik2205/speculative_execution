.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -92 # instrumentation
cmovs cx, di
xor cl, -91
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], -83
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
and dx, ax
lea rbx, qword ptr [rdi + rdi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rax], 37
test cl, -120
xchg dil, dil
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], 12
and rdx, 0b1111111111111 # instrumentation
cmp ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], sil
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 3
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], ax
and rsi, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
