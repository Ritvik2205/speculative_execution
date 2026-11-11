.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ecx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rsi, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rbx
and dil, dil
bts rdi, 130
or cl, sil
and sil, 89
or dl, -31
or sil, bl
jmp .bb_0.1
.bb_0.1:
test al, -7
or sil, bl
xor bl, al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
