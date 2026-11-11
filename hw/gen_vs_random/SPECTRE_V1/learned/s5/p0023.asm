.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rcx]
jl .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], 62
and rbx, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rbx]
sub al, bl
and sil, 111
test cl, -62
sub sil, dl
jle .bb_0.2
jmp .exit_0
.bb_0.2:
lea di, qword ptr [rax + rcx + 42]
and rsi, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
cmp bl, sil
sbb al, -107
adc dl, 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
