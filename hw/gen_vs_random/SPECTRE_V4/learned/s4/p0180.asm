.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, bl
xor cx, -80
xor dx, -43
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
or dil, 5
sub bl, al
xor al, dl
sub cl, dl
mov bl, al
and al, 49
or bx, -33
and al, -118
xor al, 106
adc al, sil
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
cmp dl, 95
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
mov sil, 16
xchg di, ax
test edi, -2098143765
cmp bl, cl
xor al, sil
and rdi, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdi]
mov dil, al
sbb cl, 45
or ax, -13633
adc cl, bl
sub dil, -11
test dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
