.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dil
xor rax, -345061362
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], al
or dl, -89
test rax, 1949278494
test dil, -80
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
test dil, 46
xor dil, -5
test bx, 25542
or al, -61
or al, sil
or bl, al
and rcx, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rcx]
test eax, 1729060510
xor dl, 8
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
