.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 71
adc al, sil
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], sil
mov al, bl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], 85
jmp .bb_0.2
.bb_0.2:
and eax, -409673666
jmp .bb_0.3
.bb_0.3:
test bl, 84
test al, 15
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
xor ax, 22976
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
