.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -78
bts rax, rcx
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
and cl, dl
bts ebx, 205
or sil, -78
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
bt ax, di
and al, 75
test dil, al
and sil, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test rcx, -613256812
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
