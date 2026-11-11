.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, bl
lea rax, qword ptr [rax]
add eax, esi
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 10
and rsi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rsi], -9
setnbe al
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], cl
add bl, -22 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle di, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdi]
add al, -79 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
adc rdx, qword ptr [r14 + rdi]
sub sil, -99
mov ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
