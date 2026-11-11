.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rax]
and dx, 22
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
cmp sil, dl
test sil, 29
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
