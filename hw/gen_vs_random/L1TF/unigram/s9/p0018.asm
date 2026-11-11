.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnle rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovs edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], al
sets dil
lea edi, qword ptr [rcx + rbx + 17]
and rsi, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], cl
and rsi, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rsi], -80
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovl rdx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rcx]
add al, -65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
