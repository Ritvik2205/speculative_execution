.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
bt eax, esi
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
mov dl, al
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
bts edi, edx
sbb esi, eax
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
mov si, -8007
or al, 27
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and al, dl
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
movsx rax, si
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
bt rsi, 153
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
or dl, dl
or dl, dl
or rax, -823069511
cmovo si, bx
add bl, -74 # instrumentation
cmovnp rbx, rdx
adc edx, -86
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
test cl, cl
and bl, dil
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
sub bl, 66
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
cmovbe rdi, rcx
cmovnbe ebx, esi
and ecx, edi
cmovnle rdx, rcx
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
dec cl
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and cl, cl
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
