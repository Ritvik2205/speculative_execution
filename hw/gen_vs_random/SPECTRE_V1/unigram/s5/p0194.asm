.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg edi, ebx
and rcx, 0b1111111111111 # instrumentation
inc byte ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 50
sub bl, dl
adc cl, al
sbb edx, -8
and dl, al
adc bx, cx
btr rax, 48
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and sil, -55
lea rdx, qword ptr [rcx + rcx + 8848]
and rbx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], dx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], rdx
xor ebx, 49
and cx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
