.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
xor cl, 24
and ax, 339
jmp .bb_0.1
.bb_0.1:
test eax, -675944960
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor cl, al
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], bl
and cl, dil
test dil, sil
or dl, bl
xor al, sil
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
or al, 16
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
