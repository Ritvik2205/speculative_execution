.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -29507
adc cl, -86
and rax, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rax]
sub al, 54
sbb dl, 53
or ax, 7381
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
mov cx, word ptr [r14 + rax]
mov bl, al
sub bl, dil
or cl, al
sub dil, 65
or bl, sil
or dil, 89
sub al, 11
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
cmp sil, cl
and rax, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rax]
and dl, 24
mov dil, al
and cl, -101
and al, 100
or dl, al
and al, 92
cmp dl, cl
mov dl, al
sub cl, -51
and dil, -120
cmp al, dil
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
