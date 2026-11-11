.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rsi
mov cl, 100
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
add si, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rdx]
lea rcx, qword ptr [rdi + rdx]
adc cl, al
add dl, -126 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
sub al, bl
lea cx, qword ptr [rax + rsi]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 93
add dx, si
and rbx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
