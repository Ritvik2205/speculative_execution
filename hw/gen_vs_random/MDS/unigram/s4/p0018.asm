.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdx
cmovp di, di
and rsi, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rsi]
bts ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
xor dil, 2
and rax, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rax]
or si, 65
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rbx]
and dl, -7
and rax, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rax], rdi
cmovnb si, si
and rbx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rbx], rax
and cl, -63
bt si, bx
or dil, sil
and dl, 60 # instrumentation
cmovno edx, edx
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
