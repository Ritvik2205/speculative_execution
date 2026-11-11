.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
add bl, 13 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rdx]
inc bl
not cx
and rcx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rcx]
mov cl, dil
lea dx, qword ptr [rdi]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
not al
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr esi, eax
and rdi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 28
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 43
lea rdx, qword ptr [rsi + rcx]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
