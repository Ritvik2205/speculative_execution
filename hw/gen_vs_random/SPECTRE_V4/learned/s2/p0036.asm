.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
dec di
and rdi, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rdi]
xor dl, al
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
xor ax, 13332
and rcx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rcx]
or al, -50
xor sil, al
cmp al, 105
not cl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
or bl, dl
sub sil, 71
and al, -118
and dl, -11
or bl, 111
sub cl, -127
xor bl, dil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and rdx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rdx]
xor cl, -101
sub dl, cl
sub al, 0
cmp sil, al
and rcx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmp dl, byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], cl
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
mov cl, 1
cmp al, 116
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
