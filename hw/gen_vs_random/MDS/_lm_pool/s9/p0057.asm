.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
or al, sil
and dl, al
bt ax, dx
test dil, -51
xor ax, 31969
and dx, 60
test bl, 65
and rbx, 0b1111111111111 # instrumentation
cmovnp rax, qword ptr [r14 + rbx]
not cl
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
test dil, dl
or al, -58
or dl, -8
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rsi], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
