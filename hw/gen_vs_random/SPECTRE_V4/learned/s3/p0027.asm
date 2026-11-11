.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, 78
sub cl, -119
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 3
xor cl, bl
mov dl, -124
or rax, 980130592
or cx, 59
mov cl, bl
cmp dl, dil
add eax, -1398129660
bts dx, 26
and bl, cl
and ax, 16313
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
xor dl, dil
sub dl, 107
and dl, cl
sub dx, -12
cmp al, 98
and dx, -107
or eax, -863161215
xor al, al
sbb dil, 48
sub rbx, 101
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdi], ecx
xor dl, sil
sbb cl, bl
sub cl, -73
sub cl, cl
and rax, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rax]
sbb dil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
