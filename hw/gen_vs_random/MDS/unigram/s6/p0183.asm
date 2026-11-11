.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and sil, al
or cl, 6
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
and rdi, 0b1111111111111 # instrumentation
or rbx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovz di, word ptr [r14 + rdi]
not dil
and sil, dl
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
and sil, -36 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bts word ptr [r14 + rcx], ax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 70
and rax, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rcx]
or sil, -49
cmovp dx, dx
and bl, -120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle di, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
cmovp edi, eax
bts rax, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
