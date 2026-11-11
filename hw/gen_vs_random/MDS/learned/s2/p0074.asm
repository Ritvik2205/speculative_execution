.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
bts rdi, rsi
and cl, sil
or cx, 39
and rbx, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rbx]
test bl, sil
xor sil, dil
and sil, bl
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
or al, sil
jmp .bb_0.1
.bb_0.1:
xor dil, -70
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 751805012
and bl, cl
xor si, 91
and al, 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
