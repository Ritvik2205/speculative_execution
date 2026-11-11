.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 95
js .bb_0.1
jmp .exit_0
.bb_0.1:
sub dl, dil
xchg rax, rdx
sub sil, -18
lea edi, qword ptr [rdx]
and al, al
and rcx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
mov dl, cl
sub ax, -15315
inc ecx
sbb sil, al
sbb sil, -78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
