.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rdi]
or bl, al
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
cmovno rdi, rcx
btr ax, 193
xor dil, -5
and rdx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdx], 62
and cl, 91 # instrumentation
cmovle rdi, rdi
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovnbe di, word ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 42
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], ecx
btc rdi, 221
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock bts dword ptr [r14 + rbx], edx
and cl, 43 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
btr esi, ebx
or al, bl
or dl, 85
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rax], eax
xor dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
