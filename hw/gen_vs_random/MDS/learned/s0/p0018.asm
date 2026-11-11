.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
btc dword ptr [r14 + rax], ebx
xor al, -26
xor al, -4
bts rax, 77
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
or al, bl
test dil, -51
and ax, 19740
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dl
and dl, dil
and dl, sil
jmp .bb_0.1
.bb_0.1:
xor cl, 15
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
