.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rsi]
add bl, -95
cmovle si, cx
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], eax
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], rdx
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
add sil, 89 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
or sil, 1 # instrumentation
mov ax, 1 # instrumentation
div sil
and rax, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 99
add cl, 112 # instrumentation
movzx edi, sil
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
setp bl
neg bl
and rsi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rsi], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
