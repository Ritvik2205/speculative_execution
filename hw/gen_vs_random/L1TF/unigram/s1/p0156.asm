.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub si, dx
sub dil, cl
xchg ecx, edx
cmovb eax, edx
setle al
and rax, 0b1111111111111 # instrumentation
setp byte ptr [r14 + rax]
inc rbx
or edi, 98
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
imul dl
and rsi, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], 0b1000000000000000 # instrumentation
bsr bx, word ptr [r14 + rbx]
add al, -113 # instrumentation
mov rax, 95
and rdx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
