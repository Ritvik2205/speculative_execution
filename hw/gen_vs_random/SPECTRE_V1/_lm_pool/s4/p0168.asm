.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdi], bl
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 6
and al, -54
and cl, 86
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], -40
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
cmovb ax, di
sub rax, -1628299544
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 60
test dl, 113
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], 20
cmp bl, dil
cmp sil, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
