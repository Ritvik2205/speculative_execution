.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -22
and cl, dl
test cl, cl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
btc rax, 110
xor ax, -16696
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
xor al, -26
cmovnz bx, dx
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
bt rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and cl, dl
and cl, 125 # instrumentation
cmovo ax, di
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and dl, cl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
