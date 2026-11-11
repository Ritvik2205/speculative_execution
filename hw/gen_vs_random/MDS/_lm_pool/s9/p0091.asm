.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rax, rax
bts rcx, rsi
and rsi, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rsi]
and dl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
jmp .bb_0.1
.bb_0.1:
xor bl, al
or dl, -97
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
xor cl, 24
not cl
test esi, 1857129931
or al, -22
and rbx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
test sil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
