.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, dl
bts rsi, 221
and rcx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rbx], 67
cmovb ebx, esi
and rax, 0b1111111111111 # instrumentation
cmovnp di, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and al, 42 # instrumentation
cmovz esi, edx
and rax, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rdx], 2
cmovns rcx, rbx
not ebx
and rbx, rsi
and rax, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rax]
and bl, dl
bt di, bx
cmovno si, cx
and rsi, 0b1111111111111 # instrumentation
bt word ptr [r14 + rsi], 1
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], -1773864540
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
