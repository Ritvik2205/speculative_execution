.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rsi + rbx + 22]
or si, 3
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], al
setbe cl
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
adc sil, -18
add dl, -6 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rdx]
cmp rdx, rbx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
xchg cl, cl
cbw
xchg eax, edi
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 96
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
