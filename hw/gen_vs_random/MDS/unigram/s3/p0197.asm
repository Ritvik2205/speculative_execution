.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
or bl, sil
not dl
or bl, -62
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 7
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
or al, -58
and di, ax
test dil, dil
and rdi, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
or sil, dl
and ebx, 99
not edx
and bl, -99 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl eax, dword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], -100
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rax], 38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
