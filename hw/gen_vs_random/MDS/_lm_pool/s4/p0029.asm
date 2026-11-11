.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
btr esi, ebx
and rcx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor dl, 40
and cl, bl
xor sil, 27
test dil, -80
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and sil, -69
or al, al
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
