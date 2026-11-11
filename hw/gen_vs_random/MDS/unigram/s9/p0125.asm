.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovno rsi, rsi
and al, -31 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rax]
or dl, -89
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and ecx, ecx
and rbx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rbx], edi
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and al, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnl rdx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 36
jmp .bb_0.1
.bb_0.1:
cmovnp rdi, rdi
bts dx, di
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
xor cl, dl
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 43
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 62
bt bx, di
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], dx
cmovnz rsi, rdi
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
