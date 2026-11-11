.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rbx]
add bl, -71 # instrumentation
adc ebx, ebx
and rbx, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
add bl, 68
not dil
add bl, -75 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rdi]
adc dx, 53
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], 54
and rdi, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdi]
lea edx, qword ptr [rax + rsi + 9]
add dil, 55 # instrumentation
lea edi, qword ptr [rdx + rsi + 3]
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rdi, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
