.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
sub cl, -21
sbb sil, -78
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
sub bl, al
lea rcx, qword ptr [rdi]
lea si, qword ptr [rbx]
add bl, 70
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
lea rbx, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
