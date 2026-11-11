.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdi], esi
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 0
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 1 # instrumentation
and edx, dword ptr [r14 + rcx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rdi], rsi
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
or eax, 1802312508
add cl, cl
dec rdi
sbb rax, 183833426
cmovs ebx, edx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, 7 # instrumentation
cmovnl edx, ebx
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], 99
and bl, 52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 55
or rdi, 14
cmovo rbx, rdx
add rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovns edi, dword ptr [r14 + rax]
cmp cl, 36
test edx, eax
cmovnz edi, esi
cmovnl rcx, rdx
adc dl, al
cmovb ecx, ecx
and rax, 0b1111111111111 # instrumentation
cmp dx, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg word ptr [r14 + rsi]
and ax, 35
adc dl, al
xchg rcx, rbx
mov rsi, rax
adc al, 36
and rsi, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rsi]
and eax, -24
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], bl
or ecx, 1 # instrumentation
and edx, ecx # instrumentation
shr edx, 1 # instrumentation
div ecx
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 1
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
adc bl, dl
and rax, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
bswap edi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
add al, cl
bts ecx, ebx
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rcx
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rdx], edx
inc edx
and rax, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rax]
and dil, sil
sub eax, esi
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
