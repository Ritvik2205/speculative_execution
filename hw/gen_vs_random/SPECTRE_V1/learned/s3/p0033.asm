.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -16 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rsi], ax
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
sub cl, dil
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 8
and rdi, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdi]
jnz .bb_0.2
jmp .exit_0
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], sil
lea rax, qword ptr [rdi + rdx + 38]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
