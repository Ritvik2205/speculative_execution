.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdi, 221
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
not rax
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
and rcx, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rcx]
and dl, 16 # instrumentation
cmovle ebx, ebx
and rcx, 0b1111111111111 # instrumentation
cmovbe bx, word ptr [r14 + rcx]
btr rsi, 146
bts rbx, 115
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -232610484
xor sil, 94
btr ecx, ebx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 111
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], al
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], eax
and rdi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdi], rax
and rdi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rdi], 97
xor edi, 46
and rcx, 0b1111111111111 # instrumentation
cmovnz si, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
