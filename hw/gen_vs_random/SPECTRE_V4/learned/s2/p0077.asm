.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ecx, 0
sub bl, -89
and al, 59
mov dl, cl
sub al, dil
and dl, bl
add al, -99
cmp bl, sil
and rcx, 0b1111111111111 # instrumentation
cmovz edx, dword ptr [r14 + rcx]
sbb al, 102
sub dil, cl
adc dl, al
adc bl, dl
xor al, al
sub rax, 714283065
dec dl
cmp al, -116
mov dil, cl
sub sil, 71
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
