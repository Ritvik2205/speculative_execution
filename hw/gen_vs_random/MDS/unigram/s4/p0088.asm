.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rdx]
xor sil, 74
bt edx, 254
and rax, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rcx
and ax, di
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
xor sil, cl
btr rbx, 96
cmovnb rdx, rdx
and rsi, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rsi], 74
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rbx, 0b1111111111111 # instrumentation
cmovno si, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and cl, -81 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns di, word ptr [r14 + rdx]
cmovnle esi, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rax]
or si, 93
bt edx, 254
and rcx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
