.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor ax, -16696
test sil, sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], cx
cmovnp rsi, rcx
and dl, -19 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rcx]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edi
or ebx, -104
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
bts ebx, 205
or ecx, edi
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and rsi, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rsi], 1
and rdi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
bts edx, edx
and dx, 3
cmovs eax, eax
test di, si
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
