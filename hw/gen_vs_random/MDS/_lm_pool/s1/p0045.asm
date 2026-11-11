.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 81
or dil, -78
or al, 30
test bl, -114
or al, bl
test dl, 48
xor cl, 55
xor cl, 15
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], sil
not al
and rdi, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdi]
and dx, 3
xor dil, -70
and rax, -636362975
test bl, dil
xor rax, -773894210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
