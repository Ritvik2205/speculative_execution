.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor al, dl
or rax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rax
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
xchg dil, bl
and rdi, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rdi]
cmp dil, 73
and rdx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
sbb rdi, qword ptr [r14 + rsi]
lea ecx, qword ptr [rbx]
add bl, -4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
sub dx, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
