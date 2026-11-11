.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp ax, 7046
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
cmovb si, ax
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -65
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
xor rcx, rsi
test ax, -32457
sub di, ax
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub rax, -1628299544
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
mul cx
jmp .bb_0.2
.bb_0.2:
add cl, 71 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], bx
and bl, -65
or eax, -1161451853
and rdx, 0b1111111111111 # instrumentation
cmovnp bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 24
and rdx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rdx]
lea esi, qword ptr [rdx + rbx]
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], dil
and rdx, 0b1111111111111 # instrumentation
setle byte ptr [r14 + rdx]
sbb dl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
