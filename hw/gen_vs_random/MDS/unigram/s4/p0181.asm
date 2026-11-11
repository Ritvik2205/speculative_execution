.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts eax, 222
not dil
xor cl, bl
and rax, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rax]
and bl, 53 # instrumentation
cmovnl rbx, rbx
not dil
and rax, 0b1111111111111 # instrumentation
cmovns bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rdx]
btr ebx, esi
and al, al
or bx, 80
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
and rsi, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rsi]
cmovnl dx, cx
and bl, 68
or bx, 46
xor bl, 67
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
