.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], -538885619
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 80
and rdi, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dl
imul ax, bx, 49
and rcx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], ebx
imul ebx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rcx]
bts eax, eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
dec cl
and bl, dil
cmovnb rax, rsi
and rax, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rax]
dec dl
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], si
sub si, ax
movsx eax, sil
mul rdi
xor ecx, 1
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdi
or rsi, rax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], 81
and rbx, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rbx]
btr di, 245
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
and rsi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rsi], -1
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], 38
and rsi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rdi], 4
bt edx, edi
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 19
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -52
and rsi, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rcx]
btr edx, 160
or cl, dl
bts cx, di
and rcx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rcx]
cmp dx, -1
add cl, 9 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rbx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
