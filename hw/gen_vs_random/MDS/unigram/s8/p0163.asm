.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rbx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dil
btc eax, esi
and rdi, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdi], edx
and rdx, 19
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], esi
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 46
and rdi, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock bts dword ptr [r14 + rdi], eax
jmp .bb_0.1
.bb_0.1:
test edi, ecx
and rbx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 91
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 18
or cl, -36
or sil, al
cmovnl ebx, edi
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 4
xor dx, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
