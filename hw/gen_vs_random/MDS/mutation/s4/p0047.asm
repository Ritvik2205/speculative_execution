.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and cl, 125 # instrumentation
cmovo ax, di
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and dl, cl
or al, -24
cmovnz bx, dx
bt rdx, rdx
xor al, 115
and cl, dl
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
test cl, cl
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
btc rax, 59
xor ax, -4010
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
