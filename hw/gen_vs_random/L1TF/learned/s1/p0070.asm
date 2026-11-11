.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -14 # instrumentation
lea ax, qword ptr [rcx + rdi]
jmp .bb_0.1
.bb_0.1:
and al, bl
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 59
jmp .bb_0.2
.bb_0.2:
and cx, -79
jmp .bb_0.3
.bb_0.3:
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 61
and cl, al
mov bl, dl
and ax, 7954
or dl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
