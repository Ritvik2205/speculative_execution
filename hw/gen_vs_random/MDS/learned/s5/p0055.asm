.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, -13
and rsi, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rdi
test ax, 6779
and rax, -636362975
test al, dl
and dl, -73
xor cl, dil
test dil, 46
and rdi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rdx]
test ebx, -2015966884
bt di, si
add bl, al
and cl, bl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], si
xor ax, 23633
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
