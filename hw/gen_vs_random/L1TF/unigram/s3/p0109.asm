.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setb bl
and rax, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rax], 93
and rcx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rcx], edx
add cl, 72 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rsi]
test si, si
and rbx, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
xchg eax, edx
sbb cl, -11
btc eax, eax
setno cl
imul rdx, rdi
cmovno bx, bx
mov bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
