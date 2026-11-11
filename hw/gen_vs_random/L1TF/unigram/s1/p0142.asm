.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea edi, qword ptr [rax + rax]
xchg cl, cl
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], bx
and rdi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdi]
cmp rdx, 98
and rdi, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], ecx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
cmovnle rdx, rax
or rsi, 17
and rdx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rdx], 94
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
imul sil
cmovns edx, eax
and rbx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rbx]
add dl, 70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
