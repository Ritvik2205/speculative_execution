.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rcx], rsi
add dl, -126 # instrumentation
and rax, 0b1111111111111 # instrumentation
adc bl, byte ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 42
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 15
and rbx, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rbx]
xor al, -127
jmp .bb_0.1
.bb_0.1:
cmovz ebx, ecx
xor edx, 101
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
xor bx, 30
xor dl, dil
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
add cl, -84 # instrumentation
xchg rax, rcx
btr ebx, 75
and rdi, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rdi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
