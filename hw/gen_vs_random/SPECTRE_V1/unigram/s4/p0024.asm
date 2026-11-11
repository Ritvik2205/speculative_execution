.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rax + rdi]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], cl
and si, 31
add rdi, 82
and rbx, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rbx]
add bl, 112 # instrumentation
adc bl, cl
and rcx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rcx]
jl .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, -47 # instrumentation
sbb dil, 100
and rsi, 0b1111111111111 # instrumentation
adc bx, word ptr [r14 + rsi]
adc ecx, 81
add rax, 913062684
sbb cx, 1
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
movzx ecx, dl
add eax, 1938514106
lea rcx, qword ptr [rcx + rbx]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
