.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 0
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], 83
and rbx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rcx]
btr rax, 65
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rbx]
and rdi, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rdi], rbx
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], dl
imul rbx, rsi, 55
or di, -85
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], -89
xor dl, bl
and rax, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btc dword ptr [r14 + rsi], edx
lea si, qword ptr [rbx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
