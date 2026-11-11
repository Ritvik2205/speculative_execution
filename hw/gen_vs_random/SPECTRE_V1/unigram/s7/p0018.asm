.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnle al
and rax, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
add al, -53 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], 100
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 34
lea esi, qword ptr [rcx + rcx]
add cl, 72 # instrumentation
adc bl, 54
cmovno rsi, rbx
sets al
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 61
sbb rax, 786640702
add bl, 9 # instrumentation
adc bl, al
add dl, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], dx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rcx
imul edi
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
