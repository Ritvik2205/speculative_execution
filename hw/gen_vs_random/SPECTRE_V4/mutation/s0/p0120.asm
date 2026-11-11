.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and ecx, edi
add bl, -74 # instrumentation
cmovnp rbx, rdx
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
dec cl
and cl, cl
adc edx, -86
movsx rax, si
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
cmovbe rdi, rcx
bts edi, edx
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
cmovnbe ebx, esi
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
test cl, cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
sub bl, 66
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
sbb esi, eax
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
mov dl, al
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
xor rdi, rbx
cmovnle rdx, rcx
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
or dl, dl
and al, dl
cmovo si, bx
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and bl, dil
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
or dl, dl
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], -107
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
cmp cl, cl
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
mov si, -8007
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
or rax, -387680856
bt eax, esi
or al, -90
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
bt rsi, 153
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
