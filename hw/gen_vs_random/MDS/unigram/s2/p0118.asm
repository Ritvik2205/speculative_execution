.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, dil
cmovnz di, di
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], rsi
and rsi, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], esi
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 1238525395
cmovo rax, rax
btc di, cx
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr rsi, qword ptr [r14 + rbx]
xor sil, dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr eax, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], esi
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], ax
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
xor dil, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr ecx, dword ptr [r14 + rax]
xor dil, 124
test ebx, esi
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
