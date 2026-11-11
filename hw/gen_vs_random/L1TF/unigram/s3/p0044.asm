.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx]
dec ebx
sbb ax, dx
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], si
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
cbw
imul sil
and rdx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], dil
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], ebx
btr edx, 7
xor al, 38
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rdi
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
