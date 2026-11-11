.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
add sil, byte ptr [r14 + rdi]
cmp rax, 108211639
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dil
test dl, dl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
and sil, dl
not bl
bts cx, 176
and rcx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
