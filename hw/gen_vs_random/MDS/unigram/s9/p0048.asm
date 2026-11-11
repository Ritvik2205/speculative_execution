.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, 0b1000000000000000000000000000000 # instrumentation
bsr esi, esi
test rdx, 87
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and dl, 53 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl rbx, qword ptr [r14 + rdx]
test rbx, 11
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
not rsi
not dil
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
and rax, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rax]
test al, -81
and rbx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rbx]
not edi
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
cmovz eax, edx
or sil, al
xor dil, cl
and bl, bl
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
