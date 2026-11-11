.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rbx]
and ebx, 108
and rsi, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rsi]
or cx, 0b1000000000000000 # instrumentation
bsf bx, cx
add bl, -52 # instrumentation
and rcx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rcx]
adc bl, -14
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi], -90
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
and rbx, 0b1111111111111 # instrumentation
cmovnz rbx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
adc bl, 86
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
dec ecx
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
