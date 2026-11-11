.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov cl, -98
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], di
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], 43
and rcx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rcx], si
and rdi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rdi], edx
cmovnbe rdi, rsi
and rdx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rdx]
dec rcx
cmovno edi, ebx
setnz dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add al, dl
sub rdx, 45
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 23
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
and rcx, 0b1111111111111 # instrumentation
add word ptr [r14 + rcx], bx
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
