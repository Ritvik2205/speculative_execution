.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 21 # instrumentation
adc si, 60
jmp .bb_0.1
.bb_0.1:
and cx, 127
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
or cl, dl
and dl, dl
and rsi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rsi]
test sil, 29
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and al, -68
jmp .bb_0.3
.bb_0.3:
cmp ax, -14781
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
cmovle rdx, rdi
jmp .bb_0.4
.bb_0.4:
cmovl rdi, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
