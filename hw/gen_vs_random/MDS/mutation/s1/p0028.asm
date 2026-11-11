.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 0
btc rax, rcx
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
xor dl, bl
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
xor dil, -124
cmovp edi, ebx
and rdi, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or ax, -14271
test eax, 298249463
and dl, dl
cmovle ax, di
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], -28205
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btc dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
not byte ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
jmp .bb_0.2
.bb_0.2:
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, edi
btc cx, 115
and rsi, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rsi]
test rax, -363019044
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rax
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 88
and rbx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rbx]
btc si, bx
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and al, -68 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rsi]
cmovnb edx, eax
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and dl, 8 # instrumentation
cmovle ax, di
and rcx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rcx]
test bl, 65
or bl, dl
and eax, 454700988
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
or rdx, rsi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
