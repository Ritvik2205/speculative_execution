.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp di, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 0
imul rcx
or rdx, -22
cmovns esi, edx
mov bl, cl
adc al, -103
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
lea edi, qword ptr [rbx]
adc cx, di
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
cmovb edi, edi
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
movsx rdx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
