.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg cl
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 122
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
sbb cl, dl
add dil, 88
test bx, cx
and rbx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rbx], cl
adc sil, sil
and rbx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
btr cx, dx
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdi
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], ax
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
setz sil
and rdi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdi]
lea si, qword ptr [rcx + rcx + 90]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
