.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rax
and rsi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rsi], 5
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
xor si, 91
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], esi
and dl, 53 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bts dword ptr [r14 + rax], edx
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 38
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], al
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dl
and rdx, 0b1111111111111 # instrumentation
cmovz rax, qword ptr [r14 + rdx]
and cl, 125 # instrumentation
cmovo bx, cx
test dl, bl
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], ax
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], 5
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
