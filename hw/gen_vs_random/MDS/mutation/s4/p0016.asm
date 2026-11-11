.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rdi], 7
and rsi, 0b1111111111111 # instrumentation
cmovns si, word ptr [r14 + rsi]
cmovz ax, ax
and si, -121
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 3
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], -83
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], -2
and al, -55
or cl, -77
test cl, -86
and rbx, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
cmovnz ax, cx
xor bl, cl
xor dl, al
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
