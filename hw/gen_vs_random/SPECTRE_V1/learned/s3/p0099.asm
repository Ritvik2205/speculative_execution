.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and dl, -111
sub bl, dil
and rsi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rsi]
mov sil, dl
sbb rsi, 98
xchg cl, al
test edx, 58
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], dl
test al, -75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
