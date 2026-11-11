.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
xor cx, -18
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
cmovp bx, bx
cmovnle bx, ax
xor bl, dl
xor ebx, 32
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rsi], cx
test ax, 18697
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 26
bts rax, rdi
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rax, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rax]
and al, 61 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
bt edx, esi
and rcx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rcx]
test rcx, -613256812
cmovnb rcx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
