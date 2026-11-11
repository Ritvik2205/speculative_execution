.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], dl
or esi, eax
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
btr eax, edi
and al, sil
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], si
bt dx, cx
and rdi, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rdi]
cmovnle ax, ax
test edx, -372470678
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
and rsi, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rsi]
bts rsi, 205
jmp .bb_0.1
.bb_0.1:
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rdi, rdi
and rcx, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rcx], 28
xor dil, -3
and rax, -2058103810
and rax, 0b1111111111111 # instrumentation
cmovo rdx, qword ptr [r14 + rax]
and sil, al
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
