.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, 71
cmp rax, -1247892360
or al, -83
and rcx, -20
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ebx
bt rcx, 189
xor di, 88
add al, -44
adc cl, -86
cmp al, -122
test ax, cx
cmp al, -116
or dl, -26
and cl, al
or al, -50
sub rcx, -74
cmp bl, -79
sub dil, dl
xor cl, dl
add al, dl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
test cl, -52
dec sil
test al, 18
add bl, dil
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
