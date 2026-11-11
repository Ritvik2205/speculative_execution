.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -49
or cl, 119
and bl, bl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or sil, al
xor cl, sil
bt edx, ebx
btr di, 89
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
bts rsi, 206
or al, 24
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rdx], ecx
test dil, -80
test rcx, -613256812
and dil, -62
sbb al, 52
bt cx, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
