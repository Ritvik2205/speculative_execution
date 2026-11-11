.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rbx]
setbe al
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
xor di, bx
setl bl
and rcx, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rsi]
btc si, ax
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], sil
sub cx, 25
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], -23
and rsi, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rax], eax
and rsi, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmovle edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
