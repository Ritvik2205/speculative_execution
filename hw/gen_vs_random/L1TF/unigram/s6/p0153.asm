.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rax], -50
sbb rdi, 92
adc cl, -34
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 99
add dil, -125 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rsi]
movzx esi, cx
lea rcx, qword ptr [rax + rdi + 34]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdx]
test rcx, rdi
lea rcx, qword ptr [rcx + rdx]
add cl, 104 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx]
sub bx, 87
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
