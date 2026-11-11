.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 67 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rcx]
add sil, sil
and dl, -86
xor bl, cl
or rdx, -22
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 29
xor dl, al
lea dx, qword ptr [rdi + rsi + 6]
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], dl
jmp .bb_0.3
.bb_0.3:
test sil, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
