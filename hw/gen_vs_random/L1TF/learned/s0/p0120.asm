.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea eax, qword ptr [rdx + rcx + 83]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
or eax, -401020526
sbb al, -50
xor bl, dl
cmovno rsi, rax
and dl, cl
or al, cl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], dl
add al, -46
sbb al, sil
sub sil, -99
add eax, 871834813
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
