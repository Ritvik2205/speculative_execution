.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
test sil, 41
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
jmp .bb_0.1
.bb_0.1:
test dil, -51
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
cmovnbe edx, esi
and al, 84
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
