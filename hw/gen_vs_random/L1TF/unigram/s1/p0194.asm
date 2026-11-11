.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rax], 62
lea ecx, qword ptr [rax + rdi + 80]
test di, dx
and rax, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
add al, 66 # instrumentation
cmovnp edx, esi
and cl, dl
or rdx, rdi
adc cl, cl
lea ax, qword ptr [rdx + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rdi]
imul rcx, rbx
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
and rcx, rsi
add cl, -102 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
add cx, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
