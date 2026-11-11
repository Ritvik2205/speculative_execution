.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rdi, rax
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 77
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 4
and al, 20 # instrumentation
cmovp si, ax
and rcx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rcx], 2
bt rax, rax
test rbx, 19
bt rbx, rdx
and rcx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rdi
bts di, 73
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
or dl, 51
and cl, cl
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
or rdi, 21
and bl, 98 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovno rdi, qword ptr [r14 + rdx]
or dx, 0b1000000000000000 # instrumentation
bsf dx, dx
and rcx, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
btr qword ptr [r14 + rcx], rdi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
