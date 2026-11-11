.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul edi, ecx
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovb bx, word ptr [r14 + rdi]
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
setnp dl
and rdi, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], -34
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], ecx
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 30
xor bl, -38
cmp rcx, 19
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ecx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
