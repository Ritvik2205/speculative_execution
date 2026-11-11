.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], rcx
and rax, 452940266
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
xor cl, 83
xor dl, 34
jmp .bb_0.1
.bb_0.1:
or ecx, esi
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], -78
test al, cl
or dl, -21
cmovle bx, di
and al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
