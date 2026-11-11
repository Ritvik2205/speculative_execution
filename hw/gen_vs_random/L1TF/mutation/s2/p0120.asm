.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovle rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rax]
add bl, 55 # instrumentation
lea ebx, qword ptr [rsi + rdi + 12048]
cmovnbe eax, edi
test al, -104
and rsi, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], -58
and rcx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rcx], -4
xor ax, 34
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], al
imul ax
or rdx, 0b1000 # instrumentation
and dl, 0b11111000 # instrumentation
xor dl, cl
cmovp ax, cx
and rcx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
test rax, 404297506
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
sub rax, 57846954
test edx, 1891691791
and rcx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rax
and rbx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rbx], 4
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
and al, -68
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
btr qword ptr [r14 + rdx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
