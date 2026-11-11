.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
cmp cl, cl
movsx rax, si
dec cl
bt rsi, 153
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
cmovo si, bx
bts edi, edx
or dl, dl
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
mov si, -8007
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
and ecx, edi
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
add bl, -74 # instrumentation
cmovnp rbx, rdx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
sbb esi, eax
or al, 1
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
or rax, 185991441
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
or dl, dl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
cmovnbe ebx, esi
sub bl, -98
cmovnle rdx, rcx
test cl, cl
and cl, cl
cmovbe rdi, rcx
mov dl, al
xor rdi, rbx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and bl, dil
bt eax, esi
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
adc edx, -125
and al, dl
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
