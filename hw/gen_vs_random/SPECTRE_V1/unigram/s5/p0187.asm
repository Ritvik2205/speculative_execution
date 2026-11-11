.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setbe dil
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], -118
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 33
setbe bl
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 12
sbb al, 66
and rsi, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rsi]
cmp edx, edi
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea bx, qword ptr [rbx + rdx]
movzx dx, dl
lea rdx, qword ptr [rax + rdx + 51]
and rax, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rax], 96
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 27
and rbx, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rbx]
setnl bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
