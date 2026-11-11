.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rsi]
and ax, -16777
sub dl, al
sub al, 96
cmp dil, al
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 3
add al, -4
or al, al
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
sub rax, -1881584175
and al, 59
add dil, dil
bts bx, 42
or dil, cl
add dl, al
sbb sil, -124
or al, -83
sub dl, al
cmp eax, 89
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
mov cl, 1
sbb ax, -30070
cmp dil, 101
and rax, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rax]
or sil, al
neg dil
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
test ax, -6584
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
