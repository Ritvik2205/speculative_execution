.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], esi
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
test dl, al
and rax, 1994547909
and cl, cl
cmp rax, 108211639
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
sbb dil, dl
sbb dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
