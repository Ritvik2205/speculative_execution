.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp rax, 57
and rsi, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rsi]
lea rdi, qword ptr [rcx + rbx]
and rdi, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rdi]
mul dil
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], dil
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmovns rdi, rdi
cmovs bx, si
sub al, sil
cmovle rdi, rcx
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 5
add al, 51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle bx, word ptr [r14 + rax]
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
add dil, 39 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
