.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 46
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
test al, cl
test dil, 46
and cx, -2
test rcx, -613256812
test cl, 62
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
or al, bl
xor cl, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
xor ax, -5889
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
