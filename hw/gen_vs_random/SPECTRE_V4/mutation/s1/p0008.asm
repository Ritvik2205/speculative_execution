.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
cmovbe rdi, rcx
cmovnle rdx, rcx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
mov dl, al
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and cl, cl
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
bt rsi, 153
or rax, -823069511
adc edx, -125
and al, dl
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
bt eax, esi
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
xor rdi, rbx
sub bl, 56
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and bl, dil
dec cl
movsx rax, si
cmp cl, cl
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
or al, -88
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
or dl, dl
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
cmovo si, bx
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
or dl, dl
sbb esi, eax
test cl, cl
bts edi, edx
mov si, -8007
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
add bl, -74 # instrumentation
cmovnp rbx, rdx
cmovnbe ebx, esi
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
