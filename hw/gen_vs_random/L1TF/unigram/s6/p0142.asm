.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
add bl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rax]
sbb ecx, 43
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
setle bl
setno dil
and rcx, 0b1111111111111 # instrumentation
and edi, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
add rbx, qword ptr [r14 + rax]
setb dil
lea rdx, qword ptr [rsi + rbx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
mov al, -101
or ebx, 65
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
bswap ecx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
