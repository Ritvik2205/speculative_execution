.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
and rsi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 62
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
btr rax, 56
cmovnbe rbx, rdi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], sil
cmovnb edx, ebx
or bl, 127
and rsi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rsi]
cmovp rsi, rdx
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
test bl, -9
bt bx, cx
btc bx, 58
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and dl, 47 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
