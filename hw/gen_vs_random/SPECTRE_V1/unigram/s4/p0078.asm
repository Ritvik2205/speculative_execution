.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rdx, 8
or ax, 0b1000000000000000 # instrumentation
bsf ax, ax
and rcx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rcx]
add dl, -24 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rax]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rbx], 29
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
and rbx, 0b1111111111111 # instrumentation
movsx eax, word ptr [r14 + rbx]
mov bl, -31
and rcx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub sil, byte ptr [r14 + rsi]
lea dx, qword ptr [rdx + rdi + 90]
sbb di, -122
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
