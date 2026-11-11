.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, -126
test eax, -651442446
xor ax, 45
and cl, 126
add dil, bl
test eax, 1340292467
cmp bl, al
sub al, 127
test eax, -251558852
or rbx, -107
sub bl, 66
movsx dx, cl
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
add al, dl
or ax, 57
sbb dil, 7
cmovnb edi, ebx
mov dl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
