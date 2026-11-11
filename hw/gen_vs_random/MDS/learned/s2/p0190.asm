.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rbx]
test sil, dil
or bl, dl
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
or bl, 13
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 5
and rax, 452940266
test dil, 46
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
or sil, -49
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -14842
and di, 91
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], bx
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], cl
xor dil, 81
or dx, 125
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
