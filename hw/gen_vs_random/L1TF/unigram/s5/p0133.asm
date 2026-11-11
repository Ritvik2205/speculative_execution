.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
sub cl, dil
add al, 65 # instrumentation
cmovo rax, rdx
and rdx, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdx]
lea cx, qword ptr [rax + rcx + 2]
or sil, -44
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], ebx
add bl, 48 # instrumentation
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 40
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
cmovz ax, dx
inc ecx
sbb rsi, 13
and rax, 0b1111111111111 # instrumentation
mov word ptr [r14 + rax], -8408
cmovb bx, si
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 33
add al, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
