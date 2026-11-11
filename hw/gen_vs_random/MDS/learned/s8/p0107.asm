.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
xor dil, bl
test eax, 343548072
or bl, dil
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
and sil, -9
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or sil, dl
btr dx, cx
and al, 84
and eax, 561041355
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
