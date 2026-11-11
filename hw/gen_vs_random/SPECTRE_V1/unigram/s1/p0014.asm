.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], cl
and rax, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rax]
cmovb rsi, rbx
add bl, -43 # instrumentation
adc ax, 63
mov dl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
lea rdx, qword ptr [rbx]
lea bx, qword ptr [rax]
mov dl, bl
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
sbb dil, dl
bts rdx, 212
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add bl, 44 # instrumentation
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rcx
imul cx
lea ecx, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
