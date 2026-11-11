.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, sil
and si, si
cmovnb ax, di
and rcx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rcx]
cmovle rcx, rcx
and al, 34 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ecx
and bl, -75 # instrumentation
cmovp ebx, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], -9
or dil, dil
btr ebx, 0
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
not dl
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and sil, dl
test sil, 41
and cl, 8 # instrumentation
cmovnl rdi, rdx
btr edi, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
