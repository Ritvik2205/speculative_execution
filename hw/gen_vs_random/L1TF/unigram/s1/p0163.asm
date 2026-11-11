.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rsi, qword ptr [rax + rsi + 32]
and rax, 0b1111111111111 # instrumentation
cmovnb ax, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnp ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rbx]
xor bl, dil
and dil, al
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], bl
cmovl dx, cx
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], ecx
bt esi, 37
and rdx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdx], rbx
mov al, 79
and rbx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edx
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
cmovb ecx, edi
cmovnp rcx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
