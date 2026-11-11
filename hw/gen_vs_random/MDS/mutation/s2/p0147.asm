.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
xor ax, 31969
and cl, 125 # instrumentation
cmovo ax, di
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
btc rax, 110
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
cmovnz bx, dx
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and cl, dl
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
or al, 24
test cl, cl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and dl, cl
and cl, dl
xor al, 115
bt rdx, rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
