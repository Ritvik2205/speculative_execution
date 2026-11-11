.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
sbb rcx, rdx
and rcx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rcx]
add dl, 27 # instrumentation
setnle dl
xor eax, -69
and rbx, 0b1111111111111 # instrumentation
dec word ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
not cl
dec cx
test al, -104
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 36
lea bx, qword ptr [rax + rbx + 47]
cmovz edx, edi
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], 90
xchg ax, bx
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
