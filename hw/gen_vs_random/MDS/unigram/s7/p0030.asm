.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 107
and dx, bx
and rbx, 65
or bx, 40
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], eax
xor al, cl
xor cl, 98
cmovnb rdx, rax
test ebx, -961564216
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
and di, 99
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
test al, -7
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rsi]
or cl, -36
and rsi, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rsi]
cmovns edi, eax
btc rdi, rdi
and al, -33 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 60
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
