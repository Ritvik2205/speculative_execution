.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
not ax
xor dl, dl
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, esi
js .bb_0.1
jmp .bb_0.2
.bb_0.1:
cwd
cmp ax, 7046
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
adc dl, -49
cmp eax, -563371897
adc bl, -73
add dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
