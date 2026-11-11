.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovle bx, si
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
or rdx, -48
xor bx, ax
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rcx]
test dil, -80
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and dl, 113 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rcx]
and bl, 98 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
xor al, -26
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rbx, qword ptr [r14 + rcx]
and bl, 49 # instrumentation
cmovbe rdx, rax
test dl, bl
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
