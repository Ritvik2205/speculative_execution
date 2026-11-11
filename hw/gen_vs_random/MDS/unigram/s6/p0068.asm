.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnz edx, dword ptr [r14 + rsi]
cmovz ax, cx
or edx, -78
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
cmovl rcx, qword ptr [r14 + rdi]
cmovns bx, si
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
btc eax, 40
or cl, 6
or rbx, -72
and bl, 45 # instrumentation
cmovnb ax, di
btc rsi, 80
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 7
and rsi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rsi]
bt rax, 36
bt cx, ax
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
or ax, -6817
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rax
test sil, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
