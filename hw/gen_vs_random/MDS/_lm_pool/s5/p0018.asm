.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dx, 3
bts rdi, rcx
xor eax, -127
and dil, sil
or dl, -97
xor cl, 24
or bl, sil
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dl
or sil, -78
or al, sil
and rbx, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rbx]
test eax, -675944960
test ecx, -1843375753
xor dil, sil
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], -53
or rbx, -72
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
