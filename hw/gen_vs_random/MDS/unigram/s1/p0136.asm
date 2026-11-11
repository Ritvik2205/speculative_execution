.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], 87
and rdx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rax
and rbx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rbx]
and al, -103
and rdx, 0b1111111111111 # instrumentation
cmovbe ax, word ptr [r14 + rdx]
and al, -86 # instrumentation
cmovns cx, di
and dil, cl
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
and al, -81 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], -68
cmovl rdx, rax
or ax, 0b1000000000000000 # instrumentation
bsf di, ax
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], -55
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rax, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rax], dx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
not cl
not bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
