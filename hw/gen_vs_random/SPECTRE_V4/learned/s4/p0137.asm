.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov al, dl
test dil, -58
cmp cl, sil
and rax, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rax]
xchg esi, ecx
and ax, 26513
add al, dl
dec cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
or sil, sil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], sil
and dil, dl
or bl, 80
and al, -118
sbb bl, -75
and dl, bl
lea edi, qword ptr [rax]
xor sil, dl
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
cmovle rax, rbx
and sil, -84
and al, -87
and bl, 76
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
cmp rax, -47
and cl, sil
or di, 2
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
sub bl, al
adc dl, 66
and bl, -119
and rdi, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdi]
add al, -3
and rcx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rcx]
cmp sil, -100
sub dil, bl
sbb cx, 106
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
