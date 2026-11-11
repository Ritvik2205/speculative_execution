.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub rdi, 77
and rbx, 0b1111111111111 # instrumentation
movsx esi, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 25
dec rdx
add cl, 29 # instrumentation
setnb sil
and rdi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdi], esi
lea edx, qword ptr [rbx]
test cl, -49
lea rdi, qword ptr [rax]
adc dil, dil
jnz .bb_0.1
jmp .exit_0
.bb_0.1:
xchg edi, eax
cmp cl, dil
movsx rsi, dx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], dx
and rdi, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdi]
mul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
