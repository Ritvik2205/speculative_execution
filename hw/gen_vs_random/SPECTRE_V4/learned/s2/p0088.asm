.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 27 # instrumentation
mov al, cl
and ax, -23308
sub sil, dil
sub cl, al
sub cl, -119
sbb dil, 31
sbb bl, -75
test al, 115
cmp al, -106
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
and dl, sil
add dil, dil
mov al, sil
sub dil, bl
dec bl
or eax, 143573881
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 55
add dl, -82
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
sub cl, 92
cmovle rdx, rsi
or al, -90
and dl, 24
xchg dl, dil
test al, 27
mov dil, cl
cmp cl, al
and dl, 126
sub dil, 35
test ax, -6841
and rdi, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
