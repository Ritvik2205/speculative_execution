.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rcx], 81
mov al, cl
add dl, al
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
cmovle rax, rbx
inc ebx
xor cl, al
cmp al, 75
xor rax, -111081832
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], eax
test al, 115
and cl, dil
adc dl, 28
adc edx, -86
lea ebx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
