.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor si, 91
bts rsi, rdx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and dl, dl
or bl, sil
add cl, dl
test ecx, -1843375753
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], bl
btr si, ax
xor cx, -18
or al, 30
xor cl, 24
or rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
