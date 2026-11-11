.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 32 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rdi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdx]
test eax, 1939511779
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
and rdx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
lea ecx, qword ptr [rax + rdx + 55]
xor cl, cl
or rax, -263404965
and cl, 9
xor bl, bl
jmp .bb_0.1
.bb_0.1:
xor bx, cx
and rax, 0b1111111111111 # instrumentation
imul word ptr [r14 + rax]
lea eax, qword ptr [rcx + rax + 82]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
