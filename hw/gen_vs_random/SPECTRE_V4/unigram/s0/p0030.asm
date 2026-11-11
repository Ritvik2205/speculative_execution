.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, dx
and rsi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rsi]
add al, cl
and rdi, 0b1111111111111 # instrumentation
cmp edx, dword ptr [r14 + rdi]
xor di, 22
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rsi]
cmovle rdi, rbx
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
bt rsi, rsi
or al, -83
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
cmovnle ax, dx
cmp sil, bl
cmp ecx, 93
movzx dx, dl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], 86
and di, ax
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], rdx
mov rax, rdi
and rax, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rax], 92
add cl, -57 # instrumentation
cmovno rcx, rax
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dl
test bl, cl
and rdx, 0b1111111111111 # instrumentation
adc cl, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
cmovnz rdi, rbx
or dl, dl
cmovnp esi, eax
and rcx, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rcx]
xor ax, si
bt ebx, 86
mov rdx, -3088288992777791879
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], 69
xor sil, sil
and rbx, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rbx]
mov rdx, rdi
or bl, al
sbb si, 94
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
movsx si, cl
btc dx, si
bt bx, cx
sub cl, dl
and rcx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], -51
and ax, cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
