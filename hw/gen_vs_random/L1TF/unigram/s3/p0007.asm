.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr si, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
and rax, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rax]
imul esi, esi, 61
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], al
and rax, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
cmovle si, bx
add dl, -125 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
imul al
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 1 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
lea cx, qword ptr [rax + rax + 41]
and rdi, 0b1111111111111 # instrumentation
xor dx, word ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
