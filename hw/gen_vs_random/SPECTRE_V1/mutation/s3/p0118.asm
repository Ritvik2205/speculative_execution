.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp ax, 7452
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -101
cmovb si, ax
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jle .bb_0.1
jmp .bb_0.2
.bb_0.1:
add al, -109
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -95
xor rcx, rsi
test ax, -13885
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
cwd
and rbx, 0b1111111111111 # instrumentation
movzx ebx, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
imul bx, word ptr [r14 + rcx], -44
lea di, qword ptr [rsi + rax + 63231]
sub dl, cl
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
lea esi, qword ptr [rsi]
mov bl, bl
movsx rax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
