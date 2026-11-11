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
bts qword ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
test cl, cl
and dl, cl
cmovns edx, ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
btr si, 208
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
xor cl, 15
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
bt edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
