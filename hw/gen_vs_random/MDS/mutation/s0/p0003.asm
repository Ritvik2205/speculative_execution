.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, 91
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
and si, -121
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
cmovz ax, ax
or cl, 7
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 57
and al, 87
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 111
and dl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnz ax, cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
xor dl, al
xor bl, cl
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
