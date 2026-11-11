.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rcx]
sub al, 59
movsx ebx, sil
sbb cl, 35
or al, 27
cmovnp cx, ax
adc cl, -86
and dl, cl
add al, -55
bts dx, 26
cmp dl, -82
dec al
and rcx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rcx]
sub dil, 65
xor cl, -73
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
xor ax, -29507
cmp al, -1
or ax, 7381
xor si, -73
and al, -28
cmp rax, 1682181214
adc al, cl
xor sil, al
add rax, 1049076260
add al, -6
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
cmp dil, -29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
