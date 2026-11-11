.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and edi, ecx
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], sil
cmovb rax, rsi
and rsi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], dx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
cmovle si, di
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rbx
and bx, 41
and rdi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 2
cmovnp rbx, rcx
and rdx, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
xor edx, 17
cmovns edi, edx
and rax, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rax]
test di, dx
and rbx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
