.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
test dx, bx
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
or dl, al
or dl, cl
and rax, -731384280
xor bl, -27
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
or rcx, 54
and esi, 9
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
