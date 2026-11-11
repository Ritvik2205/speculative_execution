.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rdi], 95
add al, -57 # instrumentation
cmovo rdi, rax
add cl, 6 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
add dl, 85 # instrumentation
cmovp ax, ax
and rdx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdx], si
add dl, -40 # instrumentation
sbb rdx, 2
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovz rcx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dil
lea rdx, qword ptr [rcx + rdi]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000 # instrumentation
and byte ptr [r14 + rsi], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rsi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
