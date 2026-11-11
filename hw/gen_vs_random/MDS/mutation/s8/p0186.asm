.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and ax, 29207
cmovnle rbx, rax
and rbx, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsr dx, si
xor rax, -773894210
and rdi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdi]
xor sil, cl
and rax, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rax], bx
not al
and rbx, rbx
and rax, 0b1111111111111 # instrumentation
cmovs rsi, qword ptr [r14 + rax]
test rax, -1579405415
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
and dl, 50 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovns edx, dword ptr [r14 + rsi]
xor eax, -885380838
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], -22
and rax, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rax]
bts edx, ebx
test cl, cl
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 39
jmp .bb_0.1
.bb_0.1:
test cl, -113
test esi, 1857129931
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and dl, al
xor al, al
and rax, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rax], 2
and sil, 89
test ax, -31596
xor dl, cl
and rcx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
