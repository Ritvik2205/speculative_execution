.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], 45
and rbx, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rax]
add bl, -74 # instrumentation
cmovnp rbx, rdx
or al, -83
adc edx, -86
and rbx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rcx]
xor rdi, rbx
and rsi, 0b1111111111111 # instrumentation
cmp al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rdx]
mov si, -8007
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], dil
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rdi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdi], bl
mov dl, al
or rax, 185991441
sub bl, 66
and cl, cl
cmovbe rdi, rcx
and bl, dil
and al, dl
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rcx]
bt eax, esi
and rcx, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rcx], rbx
bt rsi, 242
and rax, 0b1111111111111 # instrumentation
adc rax, qword ptr [r14 + rax]
cmovnle rdx, rcx
and rsi, 0b1111111111111 # instrumentation
movzx rcx, word ptr [r14 + rsi]
sbb esi, eax
dec cl
cmovo si, bx
or dl, dl
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rdx]
bts edi, edx
and rsi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rsi], bl
or dl, dl
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
cmovnbe ebx, esi
and rdx, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rbx]
and ecx, edi
cmp cl, cl
movsx rax, si
test cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
