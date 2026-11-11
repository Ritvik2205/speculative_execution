.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, si
and rsi, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rsi]
xor dl, al
jmp .bb_0.1
.bb_0.1:
btr si, ax
xor sil, 110
and dil, -39
xor sil, cl
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
xor cl, dl
btr edx, ebx
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 8639
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], di
or al, -75
and cl, dl
test dil, 46
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
