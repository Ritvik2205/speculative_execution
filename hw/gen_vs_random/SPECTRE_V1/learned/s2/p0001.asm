.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], al
inc si
sbb cl, -122
setle cl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], rax
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 18
dec al
mov si, 9258
or dil, -55
lea ebx, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rsi]
imul cl
or cl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
