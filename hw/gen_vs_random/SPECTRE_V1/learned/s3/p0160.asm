.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor rsi, 18
xchg edi, esi
add sil, al
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sbb al, 33
and dl, -111
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], 68
sub rbx, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
