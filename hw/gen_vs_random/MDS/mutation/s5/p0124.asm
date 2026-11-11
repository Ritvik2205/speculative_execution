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
xor dl, 8
cmovz bx, bx
and rbx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rbx]
or ebx, -15
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
test bl, -9
jmp .bb_0.1
.bb_0.1:
and dl, 59 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovz esi, dword ptr [r14 + rcx]
and eax, -85386306
and bl, al
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and cl, -67 # instrumentation
cmovnle rdx, rcx
jmp .bb_0.2
.bb_0.2:
and al, -53 # instrumentation
cmovbe edi, eax
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], rsi
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock btc word ptr [r14 + rsi], di
test bl, -9
bts rax, 77
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], cx
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btr word ptr [r14 + rax], si
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
not edx
btr edi, esi
test edx, -1561252782
btr rbx, 63
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
