.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, dil
xor bl, -61
btr ecx, eax
and bx, 3
test al, sil
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
and bx, 85
xor ax, -4010
cmovnp rbx, rax
xor al, 99
and rdx, 13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
