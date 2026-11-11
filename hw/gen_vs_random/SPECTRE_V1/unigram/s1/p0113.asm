.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnp dil
lea rax, qword ptr [rdi]
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
movsx rbx, cx
and rdi, 0b1111111111111 # instrumentation
cmovnp eax, dword ptr [r14 + rdi]
adc dl, dil
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], 62
jns .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 2 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], dl
imul eax, eax, 45
add bl, 60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rdx]
btc edx, edx
adc al, bl
sbb cl, dil
and bl, -65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
