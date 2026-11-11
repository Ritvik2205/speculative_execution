.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edi, 1
bts rbx, rbx
movsx rdx, bl
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 39
add dx, -90
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rdx
and bl, 26
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rdi], rax
cmovp rdi, rbx
and rbx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rbx]
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
sbb eax, 1081973675
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dil
add al, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
add dl, -99 # instrumentation
not ecx
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
cmovz eax, edx
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rcx], esi
sbb edx, 35
and rsi, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rsi]
add dl, 118 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rbx], 91
sbb sil, 108
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], dx
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], rax
xchg bl, bl
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or dx, 1 # instrumentation
add cl, -75 # instrumentation
sbb bx, dx
sbb dl, al
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
movzx esi, si
mov dl, -34
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 95
cmovs esi, edi
cmovnle edx, eax
cmovnbe rcx, rcx
and dl, 87
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], ax
movzx ecx, cl
add ax, -15653
sub bl, al
and rsi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rsi], rax
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], -105
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
