.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bx, si
not cl
btr bx, cx
xor dl, dil
test eax, -675944960
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
or al, -17
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], bl
and cx, -2
test dl, sil
xor bx, 25
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
