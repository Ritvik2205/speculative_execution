.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 57 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rsi]
xor dl, 40
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -1939205136
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rax], rcx
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
cmovnz di, cx
and rdx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and dil, 49 # instrumentation
cmovp rbx, rdi
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], 55
xor dl, 8
and bl, al
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rbx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rdx]
and dl, 84 # instrumentation
cmovl rcx, rdx
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
