.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rdx]
test al, -70
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
and cl, 83
and cl, sil
and rdi, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdi]
xor bl, dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
cmp al, -119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
