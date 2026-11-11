.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, cl
test di, 26
cmovbe ecx, esi
test cl, 0
cmovnbe eax, ecx
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], sil
and rdi, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdi]
bts rax, rsi
test di, 58
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], -92
test ecx, -1843375753
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
or bl, dil
jmp .bb_0.1
.bb_0.1:
and al, al
and rsi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rsi], rbx
or edx, 0b1000000000000000000000000000000 # instrumentation
bsr edi, edx
and rcx, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], ax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 65
cmovp rdx, rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
