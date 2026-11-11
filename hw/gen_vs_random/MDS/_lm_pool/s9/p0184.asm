.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and sil, bl
or al, bl
bt ax, si
and al, bl
and esi, 49
and bl, 68
xor dx, 58
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
xor ax, 31969
or sil, dil
test al, bl
xor cl, 98
cmovnp rax, rdi
jmp .bb_0.1
.bb_0.1:
and dil, 125
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
