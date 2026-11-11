.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rcx]
bts ecx, 184
xor eax, 1640090871
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test rcx, rbx
btr edx, eax
xor dil, dil
not bl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or dx, 125
cmovz rsi, rsi
and al, 54 # instrumentation
cmovnp si, si
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
bts ecx, ecx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 5
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], -48
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dl
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
