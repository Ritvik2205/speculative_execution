.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 71
test rsi, 33
or dil, bl
and rsi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], edi
cmovnz edx, ebx
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
and rcx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnb bx, word ptr [r14 + rcx]
bts ebx, 205
and rdx, 21
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 93
and rdi, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rsi], 7
or rdx, rcx
and rcx, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rcx]
or si, bx
cmovl edx, edi
and rdx, 0b1111111111111 # instrumentation
cmovz dx, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
