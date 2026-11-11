.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rsi], rdi
and cl, -128
cmp rax, 1097504565
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 100
sub dl, bl
cmp bl, cl
mov bl, cl
or al, bl
and al, cl
and ax, -197
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
or dl, 71
sub cl, -119
add al, -3
inc dil
sbb dl, cl
xor ax, 13332
xor dil, cl
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], cl
and rax, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rax]
sub dl, cl
sub sil, al
mov sil, dl
dec al
adc cl, -54
add dil, cl
and bl, dl
add sil, 3
test eax, 1947430392
and rdx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
