.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
sub word ptr [r14 + rax], 53
or al, -24
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], edx
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
or bl, cl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 85
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
test al, 22
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
or sil, cl
and dil, -39
xor dl, -19
and rdi, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
test dl, 9
and al, 35
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
