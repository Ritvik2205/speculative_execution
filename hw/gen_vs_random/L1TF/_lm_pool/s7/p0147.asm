.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, edx
lea eax, qword ptr [rdx]
xchg bl, dl
and edx, 41
and rax, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 72
xor bl, dil
test bl, 84
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
jmp .bb_0.3
.bb_0.3:
and rdx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdx]
or al, -48
sub sil, -99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
