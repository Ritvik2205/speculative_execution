.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 21 # instrumentation
adc ax, 32514
and rax, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rdx]
not rbx
add dl, dl
movsx esi, sil
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], 18
jmp .bb_0.1
.bb_0.1:
mov al, dl
xor al, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
