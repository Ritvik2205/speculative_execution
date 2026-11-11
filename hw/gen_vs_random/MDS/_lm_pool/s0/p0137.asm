.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
or bl, bl
test cl, -123
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
xor cl, 24
and si, -121
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
cmovns ax, dx
or al, cl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
and rax, -636362975
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
