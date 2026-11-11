.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rsi]
xchg dx, si
sub al, 88
cmp sil, al
xor eax, -117
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], 22
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or word ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rsi]
xor al, dil
and bl, al
and rax, 0b1111111111111 # instrumentation
cmovnz ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
add bl, 13 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rbx]
lea edx, qword ptr [rax]
add al, 65 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
cmp dil, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
