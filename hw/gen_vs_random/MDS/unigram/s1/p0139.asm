.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rbx
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
cmovnp rdi, rdi
bt cx, 22
and dl, 47 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rcx]
and dl, dl
and rbx, 0b1111111111111 # instrumentation
or eax, dword ptr [r14 + rbx]
and bl, dl
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
bt word ptr [r14 + rdi], bx
test dx, di
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rax], cx
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 0
cmovb ax, ax
btr rdx, 68
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], cl
and rbx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bts qword ptr [r14 + rbx], rax
or rax, -689609688
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
