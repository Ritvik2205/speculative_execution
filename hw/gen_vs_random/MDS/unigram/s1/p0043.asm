.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, al
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], cx
btr rcx, rcx
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -77
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 99
or bx, 49
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], di
cmovnle rdx, rbx
xor sil, dil
and rdi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
cmovnz rsi, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
btr dword ptr [r14 + rax], edx
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], cl
or rcx, 7
test sil, sil
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rax
btr rdi, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
