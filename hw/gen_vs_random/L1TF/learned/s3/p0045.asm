.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 80 # instrumentation
sbb sil, sil
test ax, 13284
test eax, 645518295
and eax, -409673666
lea rcx, qword ptr [rdx + rsi]
xor dl, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], cx
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], dl
cmp dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
