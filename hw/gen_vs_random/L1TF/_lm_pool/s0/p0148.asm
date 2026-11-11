.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rbx], 65
cmp eax, -127
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdi]
add sil, -61
jb .bb_0.2
jmp .bb_0.3
.bb_0.2:
btc eax, 220
jmp .bb_0.3
.bb_0.3:
jmp .bb_0.4
.bb_0.4:
and rbx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rbx]
dec dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
