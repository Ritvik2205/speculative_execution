.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, bl
add bl, 68
bts ecx, 164
xor rdi, -80
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
or bx, 0b1000000000000000 # instrumentation
bsf si, bx
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
add bl, -113 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movzx ecx, word ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
lea bx, qword ptr [rsi + rbx + 29]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
