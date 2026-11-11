.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov dl, al
cmovnle rdx, rcx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
test cl, cl
sub bl, -98
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
add bl, -74 # instrumentation
cmovnp rbx, rdx
and bl, dil
cmovnbe ebx, esi
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
dec cl
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
bt rsi, 153
sbb esi, eax
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
xor rdi, rbx
cmp cl, cl
bt eax, esi
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
cmovo si, bx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and al, dl
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and ecx, edi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
or dl, dl
or rax, -823069511
cmovbe rdi, rcx
or al, -16
movsx rax, si
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and cl, cl
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
adc edx, -125
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
bts edi, edx
mov si, -8007
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
