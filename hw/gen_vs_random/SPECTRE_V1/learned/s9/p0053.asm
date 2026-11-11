.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 67 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rax]
sbb eax, -417098439
inc rdx
setb sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
sbb eax, 1332762061
lea dx, qword ptr [rsi + rdi + 14]
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
test bl, -8
adc al, sil
xor bl, cl
test sil, 97
cmovnp ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
