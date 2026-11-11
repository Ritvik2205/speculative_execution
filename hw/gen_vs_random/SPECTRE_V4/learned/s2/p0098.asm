.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
xor al, -66
or al, -83
cmp cl, al
add dl, -82
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
sub cl, dl
cmp cl, 49
and rbx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
