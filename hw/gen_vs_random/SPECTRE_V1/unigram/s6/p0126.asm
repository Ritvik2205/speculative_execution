.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
setnb dl
and rbx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rbx]
lea dx, qword ptr [rax + rbx + 77]
mov sil, bl
lea rcx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rbx]
lea rdx, qword ptr [rdi]
xor dil, dil
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
sub al, -82
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], sil
lea edx, qword ptr [rdx + rsi + 19]
and rdx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rdx]
add bl, 78 # instrumentation
adc bx, 60
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
