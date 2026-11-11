.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
add al, 3
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], rcx
setz al
and dl, -111
cmp al, bl
and rsi, 57
and rcx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rcx]
sbb sil, cl
cmp dx, 8
cmp dl, 119
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
