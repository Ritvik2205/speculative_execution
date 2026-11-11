.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnp rcx, qword ptr [r14 + rsi]
xor rdi, -9
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], rcx
cmovs di, di
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 11
btc ax, 60
and bx, 54
and rbx, 0b1111111111111 # instrumentation
cmovs di, word ptr [r14 + rbx]
and dl, 16 # instrumentation
cmovle esi, esi
and rdx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
xor bl, cl
and rsi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rsi], ebx
and rcx, 0b1111111111111 # instrumentation
cmovz cx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
cmovnbe eax, dword ptr [r14 + rdi]
cmovo rsi, rsi
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
test bl, 65
test cl, dl
and cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
