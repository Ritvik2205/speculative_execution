.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmp dl, bl
and rdi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdi], 23
cmp bl, dl
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], eax
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
and rdx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rdx]
movzx edi, dil
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], dl
jp .bb_0.1
jmp .exit_0
.bb_0.1:
sbb ebx, eax
and rax, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rax], rsi
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -31
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 25
and rax, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], dx
xchg al, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
