.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, ebx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
or al, -5
and rbx, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
cmp rsi, 69
and rsi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rsi], 0
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
