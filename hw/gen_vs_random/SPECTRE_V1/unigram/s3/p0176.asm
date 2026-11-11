.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], dl
sub bl, -6
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
bts rdi, 229
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], ecx
and al, al
or di, 0b1000000000000000 # instrumentation
bsr bx, di
and rbx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rbx], 69
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
add si, 40
or dx, 0b1000000000000000 # instrumentation
bsf ax, dx
or dx, 23
cbw
and ebx, 74
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
