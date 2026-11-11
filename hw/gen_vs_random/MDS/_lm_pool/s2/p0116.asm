.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rsi]
or dl, bl
or dil, dil
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
xor cl, 24
xor dil, cl
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rax
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], 941195305
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
xor bx, 28
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rsi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rdx
or dl, cl
or rax, 1020005579
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
