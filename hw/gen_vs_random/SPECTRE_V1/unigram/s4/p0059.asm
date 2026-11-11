.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc cl, dl
setnbe dl
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
lea edi, qword ptr [rax + rdi + 25]
and rcx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rcx]
sub al, dil
and rdi, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdi]
setbe bl
and rsi, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdi], dl
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
xor rdx, rax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
add sil, -29 # instrumentation
add sil, -70 # instrumentation
setnp sil
xchg bx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
