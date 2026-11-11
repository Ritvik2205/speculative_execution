.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rdi + rdx]
dec cx
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
add al, -113 # instrumentation
mov rax, 55
xor cl, bl
add cl, sil
btr cx, si
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 73
and dil, dil
test dl, -37
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], bl
sbb ax, di
sbb cl, cl
sbb rcx, rsi
and bl, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
