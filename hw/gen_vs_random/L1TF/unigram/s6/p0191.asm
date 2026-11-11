.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], cl
and rax, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 81
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
add bl, 10 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
lea esi, qword ptr [rdx + rdx + 47]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
btc ecx, 10
and rdi, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rdi]
setb dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 1 # instrumentation
and dx, word ptr [r14 + rbx] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], 94
imul dx, ax, 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
