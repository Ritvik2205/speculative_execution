.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul ax
and rax, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rax]
sbb bx, 87
cmovz esi, esi
adc cl, bl
movsx edi, al
or rbx, -107
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
sbb bl, -79
and rdi, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdi]
and edx, 25
test bx, 24072
add al, 42 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rdi]
dec si
and rax, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rax]
and dil, -61
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], sil
movzx bx, bl
cmovnz si, bx
and rsi, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rsi]
sub edx, -122
and di, dx
and rax, 0b1111111111111 # instrumentation
add dil, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rsi], edx
and rcx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rcx], 25738
or cx, 59
mov rax, rbx
add al, -94 # instrumentation
cmovnle rsi, rax
adc rdi, 69
and rbx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rdi]
not bx
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rdi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rdi]
imul edi, esi, 6
xor dl, cl
add dl, 29 # instrumentation
cmovnl rcx, rsi
cmovnb ebx, esi
add cx, 29
and rdx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdx]
mul dl
cmovnl cx, di
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 33
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rsi
movzx eax, bl
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], cl
adc rax, rsi
and rax, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
