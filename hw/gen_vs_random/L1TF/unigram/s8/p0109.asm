.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], 23
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 95
btc edx, ecx
cmovno rdx, rcx
sbb rbx, rax
and rsi, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], rbx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 32
btc edx, 47
and rdi, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], 22
and rax, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btc word ptr [r14 + rax], ax
bts ecx, 164
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edi, dword ptr [r14 + rax]
sub si, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
