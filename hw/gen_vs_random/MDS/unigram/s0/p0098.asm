.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test dl, dl
cmovns ebx, edx
cmovp di, dx
xor bl, 2
and rsi, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rsi], 29
cmovs eax, esi
bt ax, 171
or edx, 14
cmovnb ax, dx
cmovnle ecx, ebx
or bx, 38
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
and rdi, 0b1111111111111 # instrumentation
cmovns dx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 74
bt edx, 254
xor dil, dil
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
bts esi, ebx
bts eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
