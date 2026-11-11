.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe ax, word ptr [r14 + rdi]
bts rax, rdi
test dl, sil
bt rbx, rcx
bt ebx, ecx
and cl, 91 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdx]
btc cx, si
btc dx, 146
xor dl, 34
cmovz bx, bx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
or ebx, -104
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
test bl, -14
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and eax, 366961170
and bl, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 1
and cl, -67 # instrumentation
cmovnle rdx, rcx
jmp .bb_0.2
.bb_0.2:
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and bl, 120 # instrumentation
cmovnp cx, si
and rsi, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rsi]
cmovbe si, ax
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
xor al, cl
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and bl, -99 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
xor al, 8
bts rcx, rdi
and dl, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rcx]
cmovnbe edi, edx
or esi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, esi
xor rax, -345061362
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and dl, 60 # instrumentation
cmovnl esi, edi
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
test cl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
