.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe bl
add dl, 118 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rdx], bx
sub bl, 97
and rdx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rdx]
cmovnbe rdx, rcx
add sil, -94 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], 90
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
inc al
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
sub rdi, 21
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
dec rsi
cwd
cmp sil, sil
dec rcx
add eax, -2019837038
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
