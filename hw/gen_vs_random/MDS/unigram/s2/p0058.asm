.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
bts rcx, 70
or edx, -78
and sil, -108 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], ebx
and dl, -1 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
or bl, -62
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 23
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and cl, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
cmovb rsi, rax
and rax, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], dl
or al, bl
cmovb rax, rsi
and rcx, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and di, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovnb esi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
