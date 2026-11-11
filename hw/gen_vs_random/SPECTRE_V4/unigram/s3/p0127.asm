.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dil
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], esi
cmovz ecx, eax
and rdi, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rsi]
and al, bl
xor al, sil
and rcx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rcx]
inc dl
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rcx], 53
xor edx, ebx
and rdi, 0b1111111111111 # instrumentation
add rdx, qword ptr [r14 + rdi]
not ax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
imul bl
cmovb rdi, rax
add dl, 118 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
test sil, al
add al, dl
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 6
and rcx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rcx]
and bl, 26
and rbx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], dil
mov ebx, 96
sbb bx, 84
add bl, bl
bts edx, 38
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
cmovnl si, ax
sbb rdx, rbx
and dx, 1
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], 39
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
add cl, 56 # instrumentation
cmovle rdx, rcx
cmovnbe edx, ebx
cmovnb di, di
movzx rdi, sil
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
adc dil, 35
add dx, -90
mov rcx, 4219775168754920203
and rdx, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
