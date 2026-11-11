.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dil, -80
test al, cl
and cx, -8
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
test rcx, -613256812
btc di, dx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edi
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 16
xor rax, -843636050
and cl, -6
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
