.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], bx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
dec cx
add cl, -102 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 227030929
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], al
and rcx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rcx]
lea edi, qword ptr [rbx]
movsx rdx, dx
adc cx, di
cmovb edi, edi
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdi
and rbx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
