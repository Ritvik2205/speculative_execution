.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub bl, -96
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], -88
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
xor rdx, rdi
add dl, 91 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rbx]
xor eax, -603819833
and rcx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
sbb ax, word ptr [r14 + rax]
add al, 24 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
cmovz edi, ecx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
or cl, -78
btc si, 43
and rax, 0b1111111111111 # instrumentation
adc rsi, qword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovbe si, word ptr [r14 + rsi]
sub sil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
