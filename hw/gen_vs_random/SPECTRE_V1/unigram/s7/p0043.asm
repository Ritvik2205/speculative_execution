.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea dx, qword ptr [rdx + rax]
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 1 # instrumentation
and dx, word ptr [r14 + rsi] # instrumentation
shr dx, 1 # instrumentation
div word ptr [r14 + rsi]
adc bx, 30
adc bl, bl
movzx eax, cx
sub dl, 71
and rdi, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rdi]
add dl, 110 # instrumentation
cmovb rsi, rdx
movzx cx, al
test dl, -7
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
not eax
mul bl
add bl, bl
neg al
add dl, 38 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
