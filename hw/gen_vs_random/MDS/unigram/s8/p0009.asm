.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc eax, 40
and rdi, rdx
test rbx, 73
cmovz rsi, rdx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dil
and edx, -44
and rdx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdx], 87
jmp .bb_0.1
.bb_0.1:
or dl, dil
btr di, di
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], cl
bt si, bx
and cl, cl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
cmovnz rax, rcx
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], edx
and bl, 107 # instrumentation
cmovbe cx, bx
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovz rsi, qword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock btr word ptr [r14 + rdx], 3
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
