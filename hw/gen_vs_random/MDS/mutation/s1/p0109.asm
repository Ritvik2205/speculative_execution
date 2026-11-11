.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts rbx, rax
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 6
and rcx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 4
and cl, 122 # instrumentation
cmovnb rcx, rsi
and rdi, 0b1111111111111 # instrumentation
cmovnp edi, dword ptr [r14 + rdi]
cmovnb edx, edx
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bts dword ptr [r14 + rax], eax
and al, -105 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and eax, -872608366
and cx, di
and rdi, 0b1111111111111 # instrumentation
and ecx, dword ptr [r14 + rdi]
or cx, 0b1000000000000000 # instrumentation
bsr cx, cx
bt rax, rcx
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 85
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rcx], 6
jmp .bb_0.1
.bb_0.1:
and bl, -55 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 5
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
xor bl, 2
xor bx, di
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], 103
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
