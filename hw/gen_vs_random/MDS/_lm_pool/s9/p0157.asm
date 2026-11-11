.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -14
xor cl, dil
not sil
or sil, dl
xor ax, -23364
test esi, 1857129931
and rsi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], cl
or dl, 85
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
xor bl, -102
or al, -58
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 94
and dl, dil
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
jmp .bb_0.1
.bb_0.1:
test dil, 46
btc cx, bx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
