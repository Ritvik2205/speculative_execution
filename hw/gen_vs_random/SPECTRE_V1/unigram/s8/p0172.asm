.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rbx], 107
bt rcx, rax
and rdi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rax]
add dil, 72
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], bx
xor edi, 115
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], dil
not ax
xor dil, dl
cmp eax, 692647572
and rax, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
bt word ptr [r14 + rax], di
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rbx, 0b1111111111111 # instrumentation
cmovnl cx, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
