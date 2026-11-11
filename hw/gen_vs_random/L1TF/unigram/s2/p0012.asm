.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc sil, 25
add bl, -92 # instrumentation
setnz cl
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], esi
and si, 4
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
test al, -32
xchg ecx, edx
add cl, 40 # instrumentation
cmovbe bx, cx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], 6
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rbx], bx
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
sbb cl, -11
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
