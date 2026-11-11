.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, cl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1803433227
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rbx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
or rbx, -77
and rbx, 65
xor cl, bl
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
test dl, -95
and rax, 0b1111111111111 # instrumentation
cmovnl bx, word ptr [r14 + rax]
or rsi, 31
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], dl
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
