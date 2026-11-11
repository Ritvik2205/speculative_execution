.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dl
cmp ebx, -33
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], al
add cl, -127
test si, 33
and rsi, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rsi]
and sil, sil
add al, al
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edx
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
