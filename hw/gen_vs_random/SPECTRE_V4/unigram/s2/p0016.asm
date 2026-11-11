.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rbx, rdx
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], di
and rdx, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rdx], 77
adc dil, sil
and rax, 0b1111111111111 # instrumentation
sub rbx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rdi]
sub al, dl
cmovno esi, eax
and rdx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], 7
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rcx]
xchg rcx, rcx
cmovs rcx, rcx
bt rdx, rdi
xor di, 46
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 39
sub dx, -12
add dil, dl
and al, bl
and cl, cl
cmovnb dx, dx
add bl, 69 # instrumentation
cmovnbe si, di
add sil, 74 # instrumentation
cmovle esi, ecx
sub bl, sil
cmovle di, di
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btr dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -2118629639
add dil, -84
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
and di, di
add bl, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rbx]
xchg edi, ecx
add bl, -97 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], ecx
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rdx
and dil, 8
cmp bx, 113
bswap edi
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
xchg di, si
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, ebx
sub bl, 56
mul cl
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
movsx edx, byte ptr [r14 + rax]
and ax, -23308
movzx eax, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
