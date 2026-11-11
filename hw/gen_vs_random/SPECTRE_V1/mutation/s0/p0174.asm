.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
imul eax, esi
cmovno rdx, rbx
sbb al, 118
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
add cl, -61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
cmovb rcx, rdx
add di, bx
bts dx, 207
neg dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
and rax, rdx
add eax, 1938514106
test rcx, rax
jmp .bb_0.2
.bb_0.2:
add al, -55 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rdi, rbx
or dil, 98
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
cmovnle dx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
