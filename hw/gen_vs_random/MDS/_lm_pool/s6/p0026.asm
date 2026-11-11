.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, sil
or al, 37
or sil, bl
xor rdi, -9
or rax, -689609688
not cl
and rdx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], bx
and bl, 68
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
bts si, 205
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rdx, 22
test cl, 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
