.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, cx
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], 84
bt rbx, 50
cmovnz ax, ax
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
and rdx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rdx]
or dil, dil
mov edi, eax
jmp .bb_0.1
.bb_0.1:
cmp rdx, rsi
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
not ebx
cmovnz ecx, esi
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
not al
and rdx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rdx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
