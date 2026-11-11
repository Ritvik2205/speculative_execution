.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 12 # instrumentation
cmovnb edi, ecx
and rax, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rax], sil
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
sbb ebx, 63
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jmp .bb_0.1
.bb_0.1:
xchg al, cl
and rbx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
