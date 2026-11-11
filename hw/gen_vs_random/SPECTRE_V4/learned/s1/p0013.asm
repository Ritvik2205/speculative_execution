.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, 143573881
mov sil, al
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx]
and ax, 13045
add dl, -82
test al, -26
and al, sil
sub edi, 4
and al, bl
cmp rdx, -49
bts ax, 155
and sil, -84
and rcx, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rcx]
sub al, 69
xor al, -6
or dil, bl
or al, al
and rcx, 0b1111111111111 # instrumentation
sbb dil, byte ptr [r14 + rcx]
cmp rax, 1097504565
bts eax, 55
add al, cl
xor dx, 7
and al, -118
xor sil, 75
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
