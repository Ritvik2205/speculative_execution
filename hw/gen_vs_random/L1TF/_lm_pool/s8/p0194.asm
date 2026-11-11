.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
btr dx, si
xor cl, sil
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
jmp .bb_0.1
.bb_0.1:
add bl, -113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdi]
add al, cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
