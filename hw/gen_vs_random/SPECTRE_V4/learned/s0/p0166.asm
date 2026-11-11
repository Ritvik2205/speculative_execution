.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
sub bx, ax
jmp .bb_0.1
.bb_0.1:
sbb dl, -106
xchg al, al
cmp cl, sil
and rax, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
xor eax, 1185843233
sbb al, 57
add al, cl
mov cl, bl
neg bl
and rdx, 84
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
add al, -82
or al, -88
adc sil, cl
add dl, sil
test eax, -31785616
xor cl, al
adc al, dl
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor rax, 93
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
cmp bl, sil
add edx, 89
sub dil, 65
adc sil, dil
cmp cl, 100
xor cx, -80
cmovle rsi, rdx
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and di, -65
mov dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
