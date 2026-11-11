.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and bl, -6 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rdi]
test ax, 30932
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmovp edx, ecx
and al, 82
btc rax, 59
btr dx, cx
or rdx, -48
and rdx, 0b1111111111111 # instrumentation
cmovnl rax, qword ptr [r14 + rdx]
cmovnle edi, ecx
and rbx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], esi
or bx, 0b1000000000000000 # instrumentation
bsf bx, bx
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 0
test rax, -708244380
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 5
or cx, 49
and ecx, edx
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
jmp .bb_0.2
.bb_0.2:
and cl, -116 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], ebx
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 1
and cl, -8 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rbx]
cmovb rax, rbx
and rax, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovp ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], cl
test rdi, rax
xor dil, sil
and rbx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rbx]
xor rcx, 71
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rsi]
and al, 57 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
bts esi, esi
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 60
xor edx, 94
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
