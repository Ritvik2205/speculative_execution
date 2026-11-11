.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -45 # instrumentation
cmovs rdx, rdx
btc ax, 26
or bl, sil
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor cx, -18
and al, al
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
or al, sil
xor ax, -1005
or dl, -31
test ecx, -1843375753
xor al, sil
test al, bl
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
or sil, sil
cmovnp si, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
