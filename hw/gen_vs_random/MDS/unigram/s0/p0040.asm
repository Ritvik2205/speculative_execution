.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovp si, word ptr [r14 + rdi]
cmovns edx, edx
and rcx, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
cmovnz rcx, rdi
and rsi, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rsi]
cmovo bx, ax
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rcx]
bts rax, 149
and rbx, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
or al, al
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], esi
bts eax, ecx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], 99
and rcx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rcx], 69
not eax
test al, -59
and rdx, 0b1111111111111 # instrumentation
cmovnle rsi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], ax
and edx, 29
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
