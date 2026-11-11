.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 1682181214
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
add rax, 114
test cl, dil
add al, -1
and dl, al
cmp cl, dl
test bl, 110
xchg rcx, rdx
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
sub dil, cl
add al, dil
and dl, -53
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
