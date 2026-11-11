.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov sil, sil
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
lea rax, qword ptr [rax + rdi + 34]
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
mov rdx, qword ptr [r14 + rcx]
lea di, qword ptr [rax]
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], -24
mov ax, dx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], di
and rsi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rsi], ax
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], 54
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rcx], si
and rbx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rbx], eax
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 68
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
