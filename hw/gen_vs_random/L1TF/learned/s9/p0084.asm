.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rbx]
cmp edx, 99
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
add al, 117
adc cl, -34
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mov rcx, qword ptr [r14 + rdi]
xor bl, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
