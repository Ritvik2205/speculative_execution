.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 109 # instrumentation
cmovs cx, ax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
or edx, 5
and rsi, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rsi]
and edi, 74
and rdi, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and bl, 89
cmovno dx, si
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
xor rdi, -80
sub cl, 86
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
