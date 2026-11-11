.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
or cl, 119
cmovz ax, ax
and si, -121
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -113
test cl, -18
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
and dl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -33
and al, 75
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
xor dl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
cmovnz ax, cx
xor bl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
