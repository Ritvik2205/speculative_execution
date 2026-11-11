.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb bl, cl
or dl, 88
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
dec rdx
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 27
cmp rax, -1102558854
and rax, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rax]
cmovz eax, edi
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdi
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], eax
add ax, -13169
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], -105
add al, al
add dil, dil
and rsi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rsi]
bts edx, eax
and rdx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdx]
sbb cl, cl
or di, 1 # instrumentation
and dx, di # instrumentation
shr dx, 1 # instrumentation
div di
cmovle rax, rdx
and rax, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rax]
and dil, al
add sil, 26
and rbx, 0b1111111111111 # instrumentation
cmovnz eax, dword ptr [r14 + rbx]
inc di
or cx, 0b1000000000000000 # instrumentation
bsf cx, cx
bts rdi, rax
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
sbb sil, 108
and rdx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rdx]
cmp dil, dil
xor al, al
neg ebx
test sil, bl
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rcx], edx
and rdi, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], esi
xchg rsi, rcx
add dl, -10 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
cmp dil, -124
bswap rsi
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], 46
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rax, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rax]
and cl, bl
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], 11
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
