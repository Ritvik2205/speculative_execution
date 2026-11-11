.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, -37
cmovnz si, dx
xchg rdi, rax
adc dil, 120
and rdi, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
lea rdx, qword ptr [rcx + rax]
sub si, 83
sub ax, 26007
and rdx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
