.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or dl, cl
test ax, 19339
and rbx, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rbx], 39
sbb al, -107
sub cl, bl
mul rbx
adc dil, al
adc bl, al
setnb dil
cmp bl, al
jb .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rcx
lea ebx, qword ptr [rbx + rdi + 52277]
add dl, 47
and rdx, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdx]
btc bx, 118
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 94
jmp .bb_0.2
.bb_0.2:
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rsi]
setnle al
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmovl ax, bx
and rax, 0b1111111111111 # instrumentation
cmovnbe cx, word ptr [r14 + rax]
sub edx, -63
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsf cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], ebx
sub al, 63
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], -79
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
