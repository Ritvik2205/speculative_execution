.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test edx, edi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], -6
cmovnl ebx, ecx
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdx]
and dl, -52 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rdi]
and dl, -127 # instrumentation
cmovno edx, eax
cmovnl edx, eax
or cl, al
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 25
test rdi, 94
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], 99
xor sil, 94
btc ax, di
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rax], cx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
and dl, 93 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rsi]
cmovnbe edi, edx
bt edx, 23
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
