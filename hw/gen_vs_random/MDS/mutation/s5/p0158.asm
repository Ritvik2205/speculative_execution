.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, -110
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], 78
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rsi]
or al, -61
and rdi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdi], 5
and al, -86 # instrumentation
cmovns dx, cx
test cl, bl
btc rbx, 102
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
btc dword ptr [r14 + rdx], esi
and rdx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdx], rbx
not edx
btr edi, esi
test edx, -1561252782
btr rbx, 63
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], 82
and rdx, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 115
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovs rdx, qword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
