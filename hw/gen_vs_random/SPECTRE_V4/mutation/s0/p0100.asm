.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, dl
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
bt rsi, 242
cmovnle rdx, rcx
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
adc edx, -125
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
dec cl
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
cmovbe rdi, rcx
cmovo si, bx
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
sbb esi, eax
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
or rax, 980130592
or al, 27
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
and cl, cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
bts edi, edx
test cl, cl
cmovnbe ebx, esi
mov dl, al
movsx rax, si
xor rdi, rbx
mov si, -8007
and ecx, edi
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
add bl, -74 # instrumentation
cmovnp rbx, rdx
sub bl, 56
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
cmp cl, cl
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
or dl, dl
and bl, dil
or dl, dl
bt eax, esi
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
