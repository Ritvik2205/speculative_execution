.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 6
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
bts dx, 50
not dil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -85
and rdx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rdx], edx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
test cx, 401
and dl, -108 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdi]
xor bx, 96
and bl, 68
and rax, 0b1111111111111 # instrumentation
cmovp cx, word ptr [r14 + rax]
and dl, 60 # instrumentation
cmovnl ecx, edi
or rdx, rsi
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], rdx
bts rsi, 205
and rcx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rcx], rdi
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
test dl, sil
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
