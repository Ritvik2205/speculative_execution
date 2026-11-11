.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
cmp cl, 59
xor dl, -123
xor ax, -22861
or eax, -863161215
neg dl
xor dl, cl
sub bl, cl
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 85
inc dl
and rax, 1827025056
test dl, cl
not al
cmp al, bl
xor dl, cl
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], bl
sub al, cl
imul cx, di
add al, -32
and sil, -84
sub dil, -40
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 5
and al, dil
sub ecx, -107
mov dil, sil
test eax, 1340292467
or di, 2
cmp al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
