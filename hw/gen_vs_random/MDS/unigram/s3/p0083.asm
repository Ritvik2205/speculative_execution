.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, 2
or sil, dl
and dl, -7
cmovns ax, dx
test dil, al
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
cmovs edx, esi
xor cl, -79
and al, -56 # instrumentation
cmovl rax, rsi
and rsi, 0b1111111111111 # instrumentation
cmovnz dx, word ptr [r14 + rsi]
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsr edx, ebx
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], rsi
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 11
and rbx, 0b1111111111111 # instrumentation
and rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 38
xor cl, -79
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 70
cmovz dx, di
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
