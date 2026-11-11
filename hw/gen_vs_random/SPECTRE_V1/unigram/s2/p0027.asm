.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt bx, bx
add bl, -92 # instrumentation
cmovs ax, cx
lea ax, qword ptr [rdx]
cmp eax, 100
and rcx, rax
add dl, 118 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rbx, qword ptr [rdx + rax + 25]
and al, dil
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rbx
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
sub cl, -21
adc cl, cl
lea si, qword ptr [rsi + rax]
xchg cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
