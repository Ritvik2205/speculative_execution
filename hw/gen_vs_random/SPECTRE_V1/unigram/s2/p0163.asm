.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dil, bl
sub eax, edx
and rcx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], rsi
movzx dx, bl
mul al
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
bts rcx, 19
or si, dx
sub rdi, 92
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
imul bl
setnz bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
