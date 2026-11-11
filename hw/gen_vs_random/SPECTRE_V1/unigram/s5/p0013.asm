.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], sil
bts rax, 67
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rax], si
and rbx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rax
cmovns rax, rsi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovle dx, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 32
and rbx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rbx]
setnb dil
and rbx, 0b1111111111111 # instrumentation
movsx edi, word ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
