.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rcx, 35
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
mul di
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 78
add cl, dl
cbw
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
btc di, 23
and rbx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rbx]
setnp dl
lea rsi, qword ptr [rcx]
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
movsx rcx, bx
add dil, cl
cmp bl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
