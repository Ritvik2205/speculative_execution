.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rbx]
imul edi, eax
adc cl, 6
sbb ax, 75
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], ecx
cmp bx, cx
add al, 17 # instrumentation
cmovnle eax, edi
and rcx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rcx]
sub bl, cl
cmovnp ax, di
and rsi, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rsi], cx
and rbx, 0b1111111111111 # instrumentation
cmp ebx, dword ptr [r14 + rbx]
cmp dx, 58
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
or ebx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv ebx
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
and rdi, 0b1111111111111 # instrumentation
cmovp ebx, dword ptr [r14 + rdi]
cmp dil, dl
imul ax
neg dl
cmp bl, sil
and rdx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdx], dil
and rdi, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], si
and rcx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rcx]
or sil, sil
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], edi
add bl, -101 # instrumentation
cmovz edx, edx
add al, 71 # instrumentation
cmovnle rbx, rax
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], 71
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 76
add bl, 69 # instrumentation
cmovnbe cx, dx
sbb dl, sil
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
btr ebx, ebx
cmovz ecx, eax
and rdx, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rdx]
test eax, -31785616
and ebx, ecx
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and edi, -102
or al, al
sbb rax, 59
and rsi, 0b1111111111111 # instrumentation
adc rcx, qword ptr [r14 + rsi]
imul si
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rcx, 0b1111111111111 # instrumentation
or ax, word ptr [r14 + rcx]
cmovb eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
