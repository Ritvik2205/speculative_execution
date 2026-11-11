.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and cl, dl
btc rax, 59
bt rdx, rdx
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
and cl, 125 # instrumentation
cmovo ax, di
xor ax, -23364
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
cmovnz bx, dx
xor al, 9
and cl, dl
or al, 24
and dl, cl
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
