.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], dil
test cl, -33
mov al, bl
inc rax
xor bl, dl
xchg rax, rsi
add dil, sil
or dl, 41
and rdi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
