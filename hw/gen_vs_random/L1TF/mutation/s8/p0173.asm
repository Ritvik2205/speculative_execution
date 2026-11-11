.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 104 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnbe rdx, qword ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rdi]
xor rax, 20
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdx], -119
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
add cl, 72 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs dx, word ptr [r14 + rdx]
cmovz rcx, rbx
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], -127
xor rcx, rsi
test ax, 636
sub di, ax
and rax, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rax]
sub rax, 1715032616
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], dl
and rdi, 0b1111111111111 # instrumentation
sbb rax, qword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
