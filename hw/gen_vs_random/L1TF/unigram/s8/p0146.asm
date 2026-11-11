.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 54
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
mov bl, 35
and rsi, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rsi]
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rax
mov sil, bl
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
cmovnb ecx, eax
cmp edi, 96
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], cx
add bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
