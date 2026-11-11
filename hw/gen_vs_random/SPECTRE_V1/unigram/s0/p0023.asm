.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rax], 78
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], -9
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 29
add sil, al
jle .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 2 # instrumentation
and rax, 0b1111111111111 # instrumentation
setnle byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rsi]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], -122
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
sbb sil, al
inc rax
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
