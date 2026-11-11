.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock bts dword ptr [r14 + rax], esi
and cl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], -23
bt edi, 254
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
xor edi, 74
and rcx, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
and rdi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rsi]
or dl, 1 # instrumentation
add dil, -47 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdx]
test edx, 94
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], al
cmovo rdx, rax
add rbx, 63
and rcx, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rcx], 0
cmovno esi, edx
and al, dl
test bl, 106
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
test ebx, 245771113
xor ax, 2053
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and bx, -21
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
not byte ptr [r14 + rcx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr di, word ptr [r14 + rbx]
cmovp esi, edi
and eax, -2116875023
cmovnbe ebx, ecx
sbb al, 4
test dil, -72
cmovz rbx, rcx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
test bl, 106
and rsi, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rsi]
cmovnbe dx, cx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], bx
inc dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
