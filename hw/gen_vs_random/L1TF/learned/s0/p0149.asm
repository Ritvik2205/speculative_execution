.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and ax, 7954
add dil, al
adc sil, dl
not al
jp .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 56
and dl, dl
test bl, -92
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rdi], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
