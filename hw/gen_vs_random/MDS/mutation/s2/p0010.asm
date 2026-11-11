.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -4010
and cl, dl
and dl, cl
test cl, cl
bt rdx, rdx
and cl, dl
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
xor al, 55
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
or al, 25
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and cl, 125 # instrumentation
cmovo ax, di
btc rax, 110
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
cmovnz bx, dx
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
