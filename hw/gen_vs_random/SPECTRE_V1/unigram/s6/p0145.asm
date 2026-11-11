.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], dl
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 2
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], 52
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
bts edx, 177
cmp sil, 25
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rax], 35
and rbx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rbx], al
and rdx, 0b1111111111111 # instrumentation
cmovz ebx, dword ptr [r14 + rdx]
and dl, -109
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], 94
sbb dil, al
bts rbx, rsi
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
cmovnp rbx, rdx
and rdx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rdx], 62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
