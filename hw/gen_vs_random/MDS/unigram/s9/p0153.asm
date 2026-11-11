.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bt dword ptr [r14 + rbx], ebx
and rax, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdi], si
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 90
or bl, -52
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], -38
and bl, bl
or al, dl
and rax, 0b1111111111111 # instrumentation
cmovnb rbx, qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
not rsi
and rax, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rax]
and dl, 97 # instrumentation
cmovnp si, di
xor rbx, 89
and rax, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
not rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
