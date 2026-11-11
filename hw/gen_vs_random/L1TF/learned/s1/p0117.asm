.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
test bl, 12
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx], 75
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
test dl, -37
jmp .bb_0.1
.bb_0.1:
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and al, dil
sub rax, 1806572419
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 12
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
