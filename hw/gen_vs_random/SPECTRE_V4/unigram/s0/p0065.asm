.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 88
and rsi, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rsi]
sub ax, dx
not ecx
cmovo bx, dx
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rcx
sbb di, -105
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 98
imul ebx, edx
and rdi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rsi]
xor bl, -126
mov cl, 14
cmovnz rbx, rdx
btc edx, 165
and dl, al
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], cl
and rcx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rcx]
movsx rax, dl
and rdi, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], rax
sub rbx, 101
mov rdx, -3284511739993892328
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], 8
and rbx, 0b1111111111111 # instrumentation
mov sil, byte ptr [r14 + rbx]
mul cl
movsx ebx, bx
cmovnle rdi, rcx
and rdi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rdi]
and cl, 126
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rbx
sbb sil, -11
and rbx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
add bx, word ptr [r14 + rcx]
sub cl, dl
cmp bl, -16
sbb rsi, 117
mul ecx
mul dil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], dl
and sil, -84
test ecx, ecx
and rbx, 0b1111111111111 # instrumentation
cmovnl rcx, qword ptr [r14 + rbx]
cmovnb bx, cx
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
sbb bl, al
sbb dl, -71
cmovle rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
