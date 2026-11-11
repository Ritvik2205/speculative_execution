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
btc rax, 59
and cl, 125 # instrumentation
cmovo ax, di
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
test cl, cl
and dl, cl
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], -20
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
xor al, -4
and cl, dl
bt rdx, rdx
xor ax, -16696
or al, 25
and cl, dl
and rax, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
and dx, 60
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
or bl, 13
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
cmovb rsi, rdx
cmovz rsi, rsi
cmovo edi, edi
and rdi, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
