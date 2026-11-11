.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dl
sub rbx, 95
cmp edi, 38
sub bl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
and rdx, 0b1111111111111 # instrumentation
sbb bx, word ptr [r14 + rdx]
add al, bl
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], esi
or cl, 105
jmp .bb_0.1
.bb_0.1:
or rbx, 18
cmp edx, 99
movzx rdx, bl
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
adc dl, al
neg cl
or rsi, 1 # instrumentation
and rdx, rsi # instrumentation
shr rdx, 1 # instrumentation
div rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
