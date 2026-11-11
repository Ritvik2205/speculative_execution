.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
and edx, -44
and rbx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rcx], 40
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rdx], dx
test rcx, -613256812
btr si, 208
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
bt bx, 253
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
test rax, 1978892575
and al, 87
and rcx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bt word ptr [r14 + rdx], si
and al, -97 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdi]
xor cx, -18
cmovnbe edi, ebx
cmovb ecx, ebx
cmovp ax, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
