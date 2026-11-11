.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, 53 # instrumentation
cmovnl rax, rax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], ecx
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], -124
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1324040999
test cl, 54
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rsi
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
cmovz ax, ax
test si, 51
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rcx], 7
and rax, 0b1111111111111 # instrumentation
and rdi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rdi
or ebx, -15
not al
or edx, edx
and rdi, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rdi], dx
btr dx, 47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
