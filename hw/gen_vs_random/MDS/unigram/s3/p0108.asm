.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, -115
and al, 93
and rdx, 0b1111111111000 # instrumentation
and edi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edi
cmovl ecx, ecx
and rcx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rcx]
bts esi, eax
and rdi, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 3
and sil, bl
jmp .bb_0.1
.bb_0.1:
cmovnz cx, bx
and rdi, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rdi]
cmovnl edx, ecx
and cl, -109 # instrumentation
cmovns rdi, rdi
xor sil, 97
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
btc rdx, 138
not eax
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 29
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
cmovle ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
