.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], sil
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], ax
cmovo si, ax
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rax, qword ptr [r14 + rbx]
cmovb dx, cx
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], al
and cl, 7 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
cmovl ax, word ptr [r14 + rdi]
cmovnbe eax, eax
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dl
or dil, bl
cmovnz rdx, rsi
test rsi, rax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
btc bx, 104
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], dl
and rcx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
