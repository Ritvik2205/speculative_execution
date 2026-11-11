.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 96
and rsi, 0b1111111111111 # instrumentation
cmovb eax, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
or si, 13
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 26
and rdx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], cl
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 85
btc rcx, rbx
and dl, -73 # instrumentation
cmovns rsi, rdx
or dl, dil
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 38
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
cmovp ecx, ecx
and al, 4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
