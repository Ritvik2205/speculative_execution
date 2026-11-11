.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, -22629
test al, 40
xor al, al
bt edx, 58
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], dil
sub al, cl
sub bl, dil
sub sil, dil
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
adc sil, -77
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
lea rax, qword ptr [rsi + rdi + 58]
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
