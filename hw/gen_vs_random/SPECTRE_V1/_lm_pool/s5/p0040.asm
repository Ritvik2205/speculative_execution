.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb edx, ecx
cmp eax, 100
sbb eax, -417098439
sbb bl, dl
cmp rcx, 5
lea si, qword ptr [rbx + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
jmp .bb_0.2
.bb_0.2:
imul rbx
sbb dl, bl
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
