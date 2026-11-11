.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
and rbx, 65
xor cl, bl
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
or sil, -78
xor al, 99
or rdi, rax
or al, bl
test ebx, -2015966884
or bl, 43
and rdx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rdx]
xor bl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
