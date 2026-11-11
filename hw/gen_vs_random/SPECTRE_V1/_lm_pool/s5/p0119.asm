.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rsi]
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], 68
and rsi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rsi], 7
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], ebx
lea dx, qword ptr [rbx + rsi + 29]
adc dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovb edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
