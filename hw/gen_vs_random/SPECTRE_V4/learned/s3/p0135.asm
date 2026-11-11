.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rax]
and al, sil
or edi, 61
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
add dl, 41
btr si, dx
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
cmovnbe rdx, rdx
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], 69
cmovnl ebx, edx
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rbx]
bt dx, bx
add bl, bl
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rcx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsf rbx, rdx
sub cl, cl
and rbx, 69
mov rsi, rax
and sil, dil
and rdi, 0b1111111111111 # instrumentation
imul ax, word ptr [r14 + rdi], 24
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
and bl, 26
xor rdi, rdx
sbb ecx, 46
and rdx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 15
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], esi
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 97
movzx dx, al
cmovnbe rbx, rcx
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
cmp edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
