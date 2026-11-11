.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or edx, dword ptr [r14 + rdx]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr edx, eax
test dil, -80
and rdx, rbx
cmovnbe rbx, rdx
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
and dl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rdx, qword ptr [r14 + rax]
cmovnle rdx, rbx
test dl, sil
jmp .bb_0.1
.bb_0.1:
cmovnz ebx, edi
and rdi, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdi]
and cl, 89 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
or al, dil
or rax, -1561934807
and rsi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rbx
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
test ecx, edi
and rdi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rbx, qword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
