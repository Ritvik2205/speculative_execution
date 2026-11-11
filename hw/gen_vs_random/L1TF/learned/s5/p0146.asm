.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx ecx, ax
or al, dl
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test rdi, rsi
bt ebx, edi
jmp .bb_0.2
.bb_0.2:
or cl, bl
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
cmovnp di, si
jmp .bb_0.3
.bb_0.3:
cmovnp rax, rsi
or rcx, 40
and ax, 7954
add dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
