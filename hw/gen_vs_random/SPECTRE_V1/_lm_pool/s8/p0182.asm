.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, sil
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 25
adc ax, -27488
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
add cl, dil
sbb eax, 1830317432
jns .bb_0.2
jmp .exit_0
.bb_0.2:
adc sil, -77
add dil, dil
btc ebx, 139
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
