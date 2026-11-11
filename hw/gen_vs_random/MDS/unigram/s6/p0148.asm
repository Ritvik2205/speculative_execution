.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdx]
test rdx, 50
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and cl, -11 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rax]
or sil, -78
and eax, 454700988
and dl, 125 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rsi], 5
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], ax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and rax, -2039117613
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
jmp .bb_0.1
.bb_0.1:
btr edi, edi
btr bx, cx
cmovnz eax, ecx
cmovp ecx, edx
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
