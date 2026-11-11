.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, sil
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
test dil, al
jmp .bb_0.1
.bb_0.1:
or al, 37
xor bl, 67
xor sil, -15
and dl, -73
and al, -54
jmp .bb_0.2
.bb_0.2:
and ax, cx
and rdx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rdx]
or al, -61
test eax, 424329527
or dl, 85
test rdi, 38
xor dil, -5
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
