.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setns bl
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], si
sub eax, ebx
add cl, 29 # instrumentation
setnb dil
or dx, di
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
setnz cl
add al, dl
setnb al
add cl, -29 # instrumentation
lea rax, qword ptr [rdi + rdi + 32]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
cbw
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
cmovp eax, edi
and rsi, 0b1111111111111 # instrumentation
add word ptr [r14 + rsi], 54
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
add al, -92 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
