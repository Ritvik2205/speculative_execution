.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rsi], 70
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], 94
and rsi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rsi], rax
xchg bl, bl
xchg dil, cl
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 64
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
bswap rdi
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 9
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
imul edx, edi, -31
lea edi, qword ptr [rdi]
test dl, sil
and rax, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rax], 0
sub ecx, ebx
and rcx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
