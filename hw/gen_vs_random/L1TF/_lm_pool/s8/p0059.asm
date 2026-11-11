.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rdx]
cmp dl, -93
add cl, bl
adc bl, dl
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
bts di, 59
or al, bl
lea ax, qword ptr [rdx + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
sbb al, bl
lea rax, qword ptr [rdi + rsi + 12]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
