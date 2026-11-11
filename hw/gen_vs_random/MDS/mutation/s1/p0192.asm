.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 96
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
test sil, -55
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 0
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
or dl, cl
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
cmovnbe edx, esi
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
test dil, -80
and al, -8
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 99
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
