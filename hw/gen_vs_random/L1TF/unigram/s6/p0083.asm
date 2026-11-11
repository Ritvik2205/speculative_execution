.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], 127
imul ax, di, 73
lea cx, qword ptr [rsi]
test ebx, 55
and rdi, 0b1111111111111 # instrumentation
imul cx, word ptr [r14 + rdi], 104
and rdx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rdx]
cmovb di, bx
and rax, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rcx
setp cl
and rcx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rcx]
add cl, 100 # instrumentation
lea dx, qword ptr [rcx]
or esi, 0b1000 # instrumentation
and sil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv esi
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
