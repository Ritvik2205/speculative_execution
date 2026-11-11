.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rsi], 4
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr eax, esi
add bl, -109 # instrumentation
sbb eax, -2052726562
and rdi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rdi], 12
and sil, al
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1481425147
setnbe dil
not eax
and rcx, 0b1111111111111 # instrumentation
sbb dl, byte ptr [r14 + rcx]
xor bl, sil
and rax, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rax], 61
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], cl
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], 119
or cx, 0b1000000000000000 # instrumentation
bsr dx, cx
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], -55
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 125
xor rsi, -3
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
add bl, 106 # instrumentation
cmovs eax, ecx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf edx, dword ptr [r14 + rdx]
bts bx, dx
add cx, cx
sbb bl, bl
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edi
test rax, -344032571
test rdi, -1876639003
cmp dx, bx
adc al, al
cmp ax, -15031
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], -119
cmovnp rsi, rsi
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
btr dword ptr [r14 + rax], edi
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
add sil, 110
xchg edx, ecx
test bl, 24
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and bx, 95
cmovb rbx, rsi
and rbx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], eax
movsx rsi, di
not cx
mov edi, -1544998000
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
movzx rdx, di
cmovl rdi, rdx
and rsi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rsi], 64
add bx, 110
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
bt ebx, 228
sbb dl, bl
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
