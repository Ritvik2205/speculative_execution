.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 34
xor dl, al
add sil, dil
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
cmp bl, dil
or cx, -74
test eax, 1947430392
cmp dil, 53
xor al, -31
or dx, 84
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
sub ax, di
and al, 41
add bl, dl
cmp sil, 113
cmovnbe rdi, rsi
sub dl, cl
mov dl, cl
sbb bl, 121
cmp dl, cl
and rax, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rax]
inc dl
adc dl, bl
lea eax, qword ptr [rsi]
and rsi, 0b1111111111111 # instrumentation
mov dx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
