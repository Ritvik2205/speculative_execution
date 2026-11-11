.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rdx]
or dil, -71
test al, 91
xor rbx, 89
cmovnp rdi, rbx
or dl, -31
btc esi, edi
bt edi, 225
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], rdx
bt esi, 3
jmp .bb_0.1
.bb_0.1:
test eax, -409834435
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], ecx
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], edi
and al, -8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rdx]
xor cl, 55
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock bts word ptr [r14 + rbx], cx
test al, dl
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
