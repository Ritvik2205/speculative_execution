.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp eax, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
adc rcx, rdi
cmp bx, ax
mov ax, bx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
or rbx, -107
sbb edx, esi
sbb dil, 66
imul cx, cx
bt rcx, rcx
movsx rdx, sil
bt edi, 233
adc bl, dl
and rbx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rcx
and rdi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rdi]
neg dl
add bl, -38
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rbx]
btr rdi, 145
not rdx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
cmovle dx, cx
mul cl
xor cx, -80
and rbx, 0b1111111111111 # instrumentation
movzx rbx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], 69
adc rsi, 82
bts di, 72
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], sil
mul ax
and rbx, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], bl
or edx, -83
cmovns rcx, rsi
or dx, 27
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
add dx, 94
sub esi, edx
adc sil, 111
sub bl, bl
and rcx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
