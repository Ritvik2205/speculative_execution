.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 107 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], 47
add cl, -70 # instrumentation
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], 52
add bl, 48 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 62
and rdi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rdi]
xor dl, 19
and rax, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rax]
adc bl, -14
btr rsi, rax
mov dl, al
and rax, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rax]
cmovbe edi, esi
and rbx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rbx]
add dl, -21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
