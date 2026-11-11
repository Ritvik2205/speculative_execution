.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdx], 100
mov sil, cl
xchg sil, sil
mov dil, cl
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
cmp rcx, 59
cmp al, sil
lea rdx, qword ptr [rcx + rax + 56]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
sub cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
