.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, -73
or ecx, edi
or al, bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and sil, -69
and cx, -2
or dil, -71
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
xor cl, 83
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], cl
xor ax, -23364
or dil, -78
xor al, 9
bt ax, si
xor cl, 55
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
and ax, 29207
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
