.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
cmovnbe ebx, ecx
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], -51
cmovns dx, bx
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], -128
and rdi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdi], bl
lea rcx, qword ptr [rax]
sbb al, -23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
