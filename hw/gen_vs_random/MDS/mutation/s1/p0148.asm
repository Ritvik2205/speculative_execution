.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], -15
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and al, 42 # instrumentation
cmovz esi, edx
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
cmovb ebx, esi
xor bl, dl
bts rsi, 221
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
cmovns rcx, rbx
not ebx
and bl, dl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmovno si, cx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 5
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rbx, rsi
bt di, bx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
