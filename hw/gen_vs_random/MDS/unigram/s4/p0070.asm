.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], bx
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr eax, ecx
and rax, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rax], 45
bts eax, 222
and rcx, -63
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 0
and al, -38 # instrumentation
cmovnb si, si
and rsi, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rsi], 5
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], -85
and rdx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdx], 7
and rdx, 0b1111111111111 # instrumentation
and rbx, qword ptr [r14 + rdx]
cmovno rcx, rbx
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 0
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 1
cmovns dx, ax
and bl, -6 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
or dx, 125
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
