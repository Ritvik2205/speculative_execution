.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and esi, eax
and rax, 0b1111111111111 # instrumentation
sbb al, byte ptr [r14 + rax]
add cx, 59
and rdx, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rdx]
cmovl rdi, rdi
and dl, -98
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
neg rsi
and rbx, 0b1111111111111 # instrumentation
cmovle si, word ptr [r14 + rbx]
lea rsi, qword ptr [rdi + rdx]
lea rdx, qword ptr [rsi + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dl
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 54
imul cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
