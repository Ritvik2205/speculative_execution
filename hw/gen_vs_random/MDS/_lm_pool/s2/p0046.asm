.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, bx
and rax, -636362975
and rcx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rcx]
and al, bl
or dil, -78
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
xor dl, dil
test cl, -113
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
xor rdi, -9
and rcx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rcx]
and al, sil
test dil, dl
not dil
and rdi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
