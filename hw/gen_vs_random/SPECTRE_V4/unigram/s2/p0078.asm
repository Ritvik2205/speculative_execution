.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], 24
movzx esi, si
cmovle eax, edi
test eax, 1880179600
and rdi, 0b1111111111111 # instrumentation
and word ptr [r14 + rdi], dx
and sil, -49
or dl, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
add sil, -10 # instrumentation
mov si, 30
and rax, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
and rbx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rbx]
xor bl, bl
and rbx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rbx]
inc ebx
test rcx, -2118888343
and dil, 96
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], 93
and rcx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
test al, 80
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -102
or dil, bl
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], dx
and rdx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rdx], 39
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
cmovb esi, esi
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 71
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
and rbx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rbx]
movzx esi, bl
or bl, 98
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], 29359
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rbx], 90
sub esi, eax
bts esi, eax
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test ebx, 1263899340
and rax, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rax]
sub bl, 17
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 6
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
add bl, bl
neg cx
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -29
and rdx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rdx], ebx
mov rsi, 8
bt esi, 227
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
