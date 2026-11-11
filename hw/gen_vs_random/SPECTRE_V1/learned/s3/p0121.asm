.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dl
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
add dl, dl
cmovno rbx, rsi
test rax, -1638758413
jns .bb_0.2
jmp .exit_0
.bb_0.2:
movzx eax, dil
or ax, 18658
and rdx, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
