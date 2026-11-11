.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
and ebx, -52
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
adc bl, -14
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], edx
and rax, 0b1111111111111 # instrumentation
sbb di, word ptr [r14 + rax]
sbb cl, dl
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -25
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
