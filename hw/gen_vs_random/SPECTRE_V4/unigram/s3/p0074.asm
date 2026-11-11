.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul sil
or ecx, eax
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add dl, 11 # instrumentation
cmovbe edx, ebx
add sil, 26
and rax, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rax]
sbb edx, eax
bt edx, eax
and rdi, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -92
or al, dl
adc al, bl
add sil, -26 # instrumentation
btr esi, 33
cmovz rax, rdx
add cl, -37 # instrumentation
adc ebx, 85
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsf rcx, rbx
dec dl
sub dil, dil
sub esi, eax
and rdi, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdi]
or si, cx
imul di, bx
bts edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rcx]
or dl, 1 # instrumentation
add dl, -122 # instrumentation
cmovnle ebx, edx
and rax, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rcx], al
add ebx, edx
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
cmovz edx, edi
sbb di, -76
and rcx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rcx], esi
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
xor bl, 93
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
add dx, -90
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ebx
and rdx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rdx]
xchg bl, al
and rbx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rbx]
xor dil, al
add di, di
dec sil
test eax, -544019457
cmovle di, di
cmp ax, -15409
add cl, 34
add sil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
