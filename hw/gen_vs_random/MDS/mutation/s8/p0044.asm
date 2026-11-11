.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
test cl, 101
and dl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and al, 35
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and si, -121
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
cmovz ax, ax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
or cl, 39
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xor bl, cl
cmovnz ax, cx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
xor dl, al
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
