.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
sbb dl, cl
xchg ecx, eax
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
add al, dil
mul rax
test al, -5
cmovnbe di, di
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], 43
mov al, 79
and rdi, 0b1111111111111 # instrumentation
cmp rax, qword ptr [r14 + rdi]
setnz dil
and rsi, 0b1111111111111 # instrumentation
movsx rcx, byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
