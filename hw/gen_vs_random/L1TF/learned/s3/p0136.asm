.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 2
or cl, dl
or dil, -28
and rax, 0b1111111111111 # instrumentation
add cx, word ptr [r14 + rax]
lea rdx, qword ptr [rax]
and rdi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
lea rcx, qword ptr [rdx + rdi]
xor ebx, ebx
add dl, -126 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdi], rbx
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
test ecx, 55
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
