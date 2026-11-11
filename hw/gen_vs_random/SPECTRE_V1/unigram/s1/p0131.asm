.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
add dil, 13 # instrumentation
setns dil
add dl, -120 # instrumentation
and rdx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rdx]
add dl, 13 # instrumentation
setns dl
and cl, dl
add al, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
imul esi, esi, -106
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rsi]
lea rdi, qword ptr [rax + rsi + 66]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], 99
add dl, 38 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rbx
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btc qword ptr [r14 + rbx], rdx
dec dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
