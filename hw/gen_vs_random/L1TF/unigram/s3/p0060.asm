.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 37
setp cl
adc sil, 77
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rsi], ax
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], cx
and rax, 363226538
add dl, 100 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
lea ebx, qword ptr [rdx + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], dil
sbb bl, bl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 3
add bl, al
and rsi, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rsi]
dec dl
and ebx, 56
bt edx, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
