.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test sil, 41
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ebx, eax
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], -13
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdi], 7
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], -59
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], ecx
or dl, cl
and rbx, 0b1111111111111 # instrumentation
cmovo ecx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
cmovnbe edx, esi
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
test dil, -80
and rcx, 0b1111111111111 # instrumentation
cmovl rsi, qword ptr [r14 + rcx]
and al, -54
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rdx, 0b1111111111111 # instrumentation
cmovbe rax, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
