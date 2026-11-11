.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rbx]
adc rax, -1877286258
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rax, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rax]
add dil, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rbx]
cmovb dx, ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], cl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnz edi, dword ptr [r14 + rax]
mov dx, bx
adc edx, 93
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
cmp rbx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
