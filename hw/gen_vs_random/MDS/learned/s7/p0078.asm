.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
or cl, bl
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
xor bl, dl
bts rcx, rdx
xor bl, -27
and al, dl
jmp .bb_0.1
.bb_0.1:
xor cl, bl
test sil, dil
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
and dl, dl
test sil, dil
jmp .bb_0.2
.bb_0.2:
xor cx, -18
and al, -54
jmp .bb_0.3
.bb_0.3:
cmovnp rax, rcx
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
