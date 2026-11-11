.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 72
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
test eax, -571234566
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 21
btr bx, cx
xor al, 55
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
test al, 66
test al, cl
btr di, bx
btr bx, dx
test al, 66
and rsi, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
test rdi, 84
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
