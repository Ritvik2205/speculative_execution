.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rsi
and rsi, 32
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
and rsi, 42
and rcx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rcx]
and dil, -75 # instrumentation
cmovp edi, edi
and rax, 452940266
and rax, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
xor sil, sil
bt edi, ebx
or dl, -89
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 2
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rsi, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], edi
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], esi
and dl, dl
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
