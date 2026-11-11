.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
sub sil, -99
xchg ecx, edx
or sil, -44
lea edx, qword ptr [rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 87
jmp .bb_0.1
.bb_0.1:
cmp cx, 1
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], -6
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
test ax, 22956
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
