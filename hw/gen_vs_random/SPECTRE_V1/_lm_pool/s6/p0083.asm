.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], si
and rdx, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rdx], 21
add bl, cl
xor dl, dil
sbb al, cl
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
test al, -75
and rsi, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
inc ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
