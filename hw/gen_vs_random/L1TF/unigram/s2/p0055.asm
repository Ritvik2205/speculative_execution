.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, sil
cmovno esi, esi
cmovp bx, ax
and rdi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rbx]
btr di, dx
cmovnl di, si
add bl, -39 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rbx]
adc al, dil
and rsi, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rsi]
add al, -3 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], sil
not bl
sbb edx, 42
and rbx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], 37
lea rcx, qword ptr [rdx + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
