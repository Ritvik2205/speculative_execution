.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr eax, ecx
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], dil
lea ebx, qword ptr [rdx + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], dl
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
movzx bx, al
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 55
and rdx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
add cl, 107 # instrumentation
cmovnl dx, dx
and rdi, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
add cx, 78
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdi
sub ebx, esi
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], bx
bswap rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
