.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 80
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rdx]
xor al, sil
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rdx]
mov bl, dl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
test dl, al
and cl, 20
add al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
