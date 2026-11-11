.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rbx]
cmp ax, -31327
and rsi, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rsi], -40
cmovb si, ax
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], -82
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
xor rcx, rsi
test ax, 22956
sub di, ax
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub rax, -2089384489
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
jmp .bb_0.2
.bb_0.2:
add al, 104 # instrumentation
sbb rax, 1890168613
cmovo rdx, rsi
xchg bl, cl
lea si, qword ptr [rdi + rcx]
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
