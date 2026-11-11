.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc esi, dword ptr [r14 + rax]
adc al, 80
add dil, dil
lea edx, qword ptr [rcx + rbx]
jmp .bb_0.1
.bb_0.1:
lea cx, qword ptr [rcx + rax]
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rcx], 20
inc sil
or al, -48
inc bl
sbb dl, -26
and rsi, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rbx]
xor ebx, ecx
and rsi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
