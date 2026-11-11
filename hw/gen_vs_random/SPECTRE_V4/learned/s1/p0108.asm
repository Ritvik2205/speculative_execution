.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mov esi, dword ptr [r14 + rbx]
bts ebx, 197
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
xor al, 57
sub dil, 65
cmp rbx, -66
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
cmovnz edx, eax
sub sil, 71
and dil, al
test al, 115
or dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
