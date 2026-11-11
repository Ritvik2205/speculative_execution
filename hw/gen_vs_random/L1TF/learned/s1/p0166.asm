.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -71 # instrumentation
adc eax, eax
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 27
add dil, bl
add dl, bl
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
add cl, bl
lea cx, qword ptr [rax]
sbb dil, 2
jmp .bb_0.1
.bb_0.1:
sub sil, -99
jmp .bb_0.2
.bb_0.2:
lea di, qword ptr [rcx + rbx + 26]
lea ebx, qword ptr [rdx + rcx]
xor dil, -42
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
