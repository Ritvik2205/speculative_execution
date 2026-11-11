.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
lea esi, qword ptr [rcx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], bl
test rcx, -1420345926
and rsi, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rsi]
sbb cl, 105
cmp rdx, -19
lea bx, qword ptr [rax + rcx]
and rdx, 0b1111111111111 # instrumentation
adc ax, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
