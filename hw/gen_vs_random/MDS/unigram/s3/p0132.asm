.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 60 # instrumentation
cmovnl ebx, edi
cmovb cx, cx
and sil, -81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
and al, -3 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 2
or bx, 0b1000000000000000 # instrumentation
bsr cx, bx
and al, -81 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
test bl, 65
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], bx
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], eax
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovnp rdx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1227922647
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 84
and rdx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 61
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bt word ptr [r14 + rax], 5
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
