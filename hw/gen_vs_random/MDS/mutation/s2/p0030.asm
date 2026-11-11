.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
and al, 42 # instrumentation
cmovz esi, edx
cmovb ebx, esi
xor bl, dl
bts rsi, 206
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
not ebx
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
cmovno si, cx
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
bt di, bx
and rbx, rsi
and bl, dl
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -2053267874
cmovns rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
