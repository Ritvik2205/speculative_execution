.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rax]
add bl, bl
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
sbb bl, -79
cmovs rdx, rcx
adc rcx, -99
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 70
btc rcx, rax
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], ax
and rax, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rax], 0
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
add cl, bl
cmovl ecx, eax
and rsi, 0b1111111111111 # instrumentation
neg word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovz ecx, dword ptr [r14 + rcx]
add rcx, rcx
cmovno edx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rdi]
cmovb rdx, rsi
imul cx, cx
test al, 114
btc edi, eax
or sil, 1 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
and rsi, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rax]
cmovbe eax, edx
cmovnbe rcx, rbx
bswap rax
adc al, 43
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
add al, 89 # instrumentation
cmovnle di, bx
cmp sil, cl
and rdi, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rdi]
or cx, -74
and rax, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rax], 100
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rdx
and rbx, 0b1111111111111 # instrumentation
add cl, byte ptr [r14 + rbx]
cmovnz rcx, rdx
and rdi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdi], cx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, eax
not rbx
adc dx, 82
and rcx, 0b1111111111111 # instrumentation
movzx rax, byte ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
sbb dl, -71
test eax, 1340292467
and rsi, 0b1111111111111 # instrumentation
mov rbx, qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
