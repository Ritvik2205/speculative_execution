.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 112 # instrumentation
adc dl, cl
imul eax, esi
cmovno rdx, rbx
sbb al, 104
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 57
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
bts dx, 26
neg dil
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 5
and rax, rdx
add eax, -55403434
test rcx, rax
jmp .bb_0.2
.bb_0.2:
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 102
and cl, al
adc al, -92
and rax, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 121
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
