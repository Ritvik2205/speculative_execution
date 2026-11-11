.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 54
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 18
cmovs rdx, rbx
sub bl, 17
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 41
adc ecx, -12
xchg rax, rdi
cmovle ecx, ebx
cmovo esi, ecx
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], -42
test al, al
and rsi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rsi]
or ax, -15282
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 10
imul rdx, rax, 41
add cl, cl
movzx si, al
cmp bl, al
xor dil, cl
adc edi, 78
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
xor dil, cl
test si, 4
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
test al, sil
sub dil, -10
dec dil
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 43
and rdi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rdi], 85
bt ebx, eax
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
sub rdi, qword ptr [r14 + rdi]
and cl, 58
mov bl, 60
sub bl, 17
cmovnle ecx, ebx
and rdx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rdx]
cmovns rdi, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
