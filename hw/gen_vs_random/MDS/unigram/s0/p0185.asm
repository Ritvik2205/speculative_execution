.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and di, 31
cmovnle rdx, rbx
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rax, qword ptr [r14 + rcx]
xor bl, al
or si, dx
bts ebx, ecx
or cl, 100
cmovz dx, bx
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
or al, dil
and rsi, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rsi], ecx
and rdx, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rdx], ax
and rcx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rcx], 5
not dil
and dil, 40
and di, si
or rax, 1749358813
cmovnl di, bx
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 80
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
