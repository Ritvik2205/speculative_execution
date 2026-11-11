.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
cmovnz bx, dx
and rsi, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rsi]
btc rax, 110
and cl, 125 # instrumentation
cmovo ax, di
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test cl, cl
and dl, cl
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test cx, 401
and al, dl
bt si, 23
bt di, cx
or al, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rax, -2039117613
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
