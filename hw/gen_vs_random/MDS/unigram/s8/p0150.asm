.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr dx, 47
and rax, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rax], 7
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
and al, -116 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rsi]
test dl, dl
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
or bl, 13
not cl
and rcx, 0b1111111111111 # instrumentation
cmovnl ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and dl, 72 # instrumentation
cmovz eax, ebx
cmovbe ebx, ebx
test sil, sil
xor al, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], di
xor di, -83
or cl, cl
not rdx
not al
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
