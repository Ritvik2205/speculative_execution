.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, sil
sub dl, bl
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], -24
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
add cl, -27 # instrumentation
sets cl
lea rsi, qword ptr [rsi]
adc ecx, 19
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 4
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], -37
lea rdx, qword ptr [rdi + rdi]
and rdx, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], cx
add cl, 78 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rcx]
and sil, 52
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
