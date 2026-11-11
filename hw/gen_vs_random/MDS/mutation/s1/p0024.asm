.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
xor al, -4
and cl, 125 # instrumentation
cmovo ax, di
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and dl, cl
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
bt rdx, rdx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and cl, dl
test cl, cl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
cmovnz bx, dx
or al, -61
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
btc rax, 59
xor ax, -16696
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
