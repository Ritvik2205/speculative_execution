.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
not cl
and rsi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rsi]
sbb al, 92
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and bx, 55
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rbx
cmovs edx, esi
xor al, bl
and rdi, 0b1111111111111 # instrumentation
cmovs eax, dword ptr [r14 + rdi]
lea rsi, qword ptr [rsi + rcx]
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
setle al
setb bl
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], ax
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or bx, 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
