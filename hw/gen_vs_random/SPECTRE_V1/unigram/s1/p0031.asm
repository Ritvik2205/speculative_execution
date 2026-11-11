.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 112 # instrumentation
setnbe sil
add bl, 26 # instrumentation
sbb dl, sil
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
bts rax, rdi
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 7
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], cl
or al, cl
and rdi, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rdi]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 98
add dl, 20 # instrumentation
cmovnbe rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], 79
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 67
inc dil
lea edi, qword ptr [rcx + rdx]
and rbx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rbx], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
