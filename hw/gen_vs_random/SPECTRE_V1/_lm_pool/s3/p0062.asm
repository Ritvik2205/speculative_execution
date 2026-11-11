.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
adc al, -92
lea rsi, qword ptr [rcx + rbx]
sub al, -89
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
jmp .bb_0.1
.bb_0.1:
mov dl, bl
sub dil, cl
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
cmp al, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
