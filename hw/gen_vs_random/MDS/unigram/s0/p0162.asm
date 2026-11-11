.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
xor cl, al
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], 81
cmovnl bx, ax
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and bl, -66 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
xor esi, 79
and dl, -33 # instrumentation
cmovns rbx, rbx
and edx, 18
and rdx, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rax
xor cx, bx
or rdi, 67
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsr rdx, qword ptr [r14 + rcx]
xor dl, -125
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
test eax, 758789512
and rbx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rbx], 56
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
