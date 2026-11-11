.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, 113
and rax, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rax]
lea rbx, qword ptr [rdi]
lea rbx, qword ptr [rcx + rbx]
test dil, -116
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], sil
and rcx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rcx], 86
and cl, bl
sbb cl, dl
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
