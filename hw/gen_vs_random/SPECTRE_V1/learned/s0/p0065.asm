.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov bl, dil
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rdx], cx
mov dl, cl
and al, -23
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and al, -23
add bl, dil
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
sbb sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
