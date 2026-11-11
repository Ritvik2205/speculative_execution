.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, -32
inc dl
setno cl
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], 66
or cl, 105
xor esi, 4
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], 8
and rdi, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rdi]
setle cl
jmp .bb_0.2
.bb_0.2:
or bl, al
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
