.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt rdi, 36
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rbx
and al, al
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
cmovp bx, cx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 2
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
bt rsi, 27
and dil, 23 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rcx]
or edx, -78
xor rdi, -9
not rcx
or dil, al
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and cl, 126 # instrumentation
and rax, 0b1111111111111 # instrumentation
not word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
cmovo rcx, rax
or rdi, 21
bt ebx, 38
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
