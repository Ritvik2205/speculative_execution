.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 0
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
add bl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov di, word ptr [r14 + rsi]
sub bl, 61
xor dil, dl
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
adc dl, dl
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 58
test dil, al
setnbe al
cmovle di, di
and rdx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rdx]
sbb bl, sil
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
movzx edx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
