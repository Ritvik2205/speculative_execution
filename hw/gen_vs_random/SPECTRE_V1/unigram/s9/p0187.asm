.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc bx
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
or bx, bx
lea di, qword ptr [rbx + rsi]
lea rcx, qword ptr [rsi + rdx + 76]
and rdx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rdx], ebx
and rax, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rax]
and bl, -43
and rcx, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rcx]
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
sbb dl, cl
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dl
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rax, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rax]
add cl, 112 # instrumentation
sbb ebx, 31
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
