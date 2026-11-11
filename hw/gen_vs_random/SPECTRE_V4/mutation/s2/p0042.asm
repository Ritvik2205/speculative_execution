.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
cmovbe rdi, rcx
mov si, -8007
sbb esi, eax
sub bl, -89
or rax, -823069511
cmp cl, cl
adc edx, -125
dec cl
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
test cl, cl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
or al, 1
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
bt rsi, 153
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
cmovnbe ebx, esi
cmovnle rdx, rcx
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and ecx, edi
and cl, cl
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
or dl, dl
add bl, -74 # instrumentation
cmovnp rbx, rdx
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and al, dl
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
movsx rax, si
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
or dl, dl
bts edi, edx
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
cmovo si, bx
mov dl, al
bt eax, esi
and bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
