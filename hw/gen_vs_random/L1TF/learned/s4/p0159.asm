.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], 25
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rbx + rdi + 64]
test dx, di
test sil, 29
jmp .bb_0.2
.bb_0.2:
jmp .bb_0.3
.bb_0.3:
test di, 86
and bl, al
adc al, cl
jmp .bb_0.4
.bb_0.4:
cmp dl, sil
mov al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
