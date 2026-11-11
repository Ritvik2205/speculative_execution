.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, bl
adc dl, al
and dil, -120
and bl, -119
and rax, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rax]
cmp bl, sil
add dil, bl
and rdx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdx]
or al, 27
xchg rbx, rax
and al, 82
and rdi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
