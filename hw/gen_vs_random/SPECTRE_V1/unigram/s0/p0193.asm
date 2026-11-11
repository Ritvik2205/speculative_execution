.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb rdx, 58
setb al
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], esi
add cl, -36
movsx rdx, cl
and rax, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rax], rsi
cmovnbe rsi, rdi
add dl, 79
adc si, -95
js .bb_0.1
jmp .exit_0
.bb_0.1:
setnle sil
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
lea ecx, qword ptr [rax]
cmp al, 5
sets al
add cl, 67 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb cx, word ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
