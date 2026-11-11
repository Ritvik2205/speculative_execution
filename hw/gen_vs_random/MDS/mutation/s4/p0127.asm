.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ecx
and si, di
cmovnb rdx, rsi
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
or eax, 678817098
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
btc di, 164
or cx, 49
and rsi, 0b1111111111111 # instrumentation
cmovnb eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and dl, 113 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl esi, dword ptr [r14 + rbx]
and rax, -1931765367
and dl, dl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdi
and cl, -85 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
cmovno dx, si
cmovle dx, ax
and sil, -69
and rsi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rsi]
cmovno rcx, rdi
jmp .bb_0.2
.bb_0.2:
and dl, 17 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
cmovb edx, eax
xor al, cl
xor dl, al
xor di, 40
or si, si
bts ax, di
and bl, 20 # instrumentation
cmovo esi, edx
or eax, -900576213
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
