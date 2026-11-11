.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rax, rsi
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 61
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 55
or rsi, 54
or al, -48
lea rax, qword ptr [rcx + rdx + 63]
and rdi, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rdi]
sub al, -47
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 28
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
cmp rbx, 83
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 92
add bl, 37 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], 97
cmovo bx, cx
add al, -9 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 75
cmovnz bx, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
