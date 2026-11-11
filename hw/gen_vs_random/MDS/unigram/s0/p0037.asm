.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
xor al, 78
and dl, -78 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rax]
test rax, 1732677821
cmovbe bx, bx
cmovz rcx, rax
and rdx, 19
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
xor cl, -79
and dil, 102 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rdx]
cmovbe ax, di
and cx, si
cmovle rbx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], si
test rsi, 879594088
xor di, si
and dil, -3 # instrumentation
cmovnb di, dx
and rax, 0b1111111111111 # instrumentation
cmovno edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
