.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and di, 97
and rdx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rdx], 4
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdi], rax
and rdx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 7
and cl, -101
or dl, -115
and rcx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rcx], 2
btc si, 18
and rbx, 13
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], edi
and rdx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rdx]
bts ecx, edi
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], ecx
cmovnz si, si
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
btr qword ptr [r14 + rax], rcx
and rcx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdi
and cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovbe rcx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
