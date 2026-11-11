.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 5
add cl, 42 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 3
and rcx, 0b1111111111111 # instrumentation
mov bx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], edx
and rbx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ecx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], 40
test dx, 92
jnb .bb_0.1
jmp .exit_0
.bb_0.1:
or dl, 41
add al, cl
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], -119
and rcx, 0b1111111111111 # instrumentation
sbb edx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 87
setp dl
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
