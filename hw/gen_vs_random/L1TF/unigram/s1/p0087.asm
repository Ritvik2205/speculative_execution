.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rcx]
sub bl, cl
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 61
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], edx
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rcx]
and di, dx
mul rdx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovz eax, dword ptr [r14 + rcx]
cmovnb di, ax
bts eax, esi
and rbx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rbx]
add bl, -124 # instrumentation
setnz bl
lea si, qword ptr [rbx + rsi + 54]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
