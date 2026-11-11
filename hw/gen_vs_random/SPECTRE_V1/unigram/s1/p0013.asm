.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ebx, qword ptr [rsi + rsi + 50]
movsx cx, bl
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 59
and rdx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rdx]
lea ax, qword ptr [rbx + rdi]
lea edi, qword ptr [rbx]
sub cl, -21
cmovno cx, cx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rdi], 47
imul dx
movsx rsi, bx
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], cl
bt esi, 52
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
