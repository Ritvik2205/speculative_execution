.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, al
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
add cl, 40 # instrumentation
cmovbe bx, si
and rsi, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rsi]
btr eax, 47
setno sil
add sil, -124 # instrumentation
setnz sil
add cl, 39 # instrumentation
setle al
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdx]
sbb al, 61
setb cl
and si, si
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
imul edi, ebx, 99
and rbx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
