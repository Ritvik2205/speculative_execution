.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg di, ax
sub cl, bl
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
xor sil, dil
and rax, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
cmovbe rdi, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
lea edx, qword ptr [rdx + rsi + 62]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
mov eax, edx
add dl, -104 # instrumentation
and rdx, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], al
add al, 65 # instrumentation
and rdi, 0b1111111111111 # instrumentation
setnz byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
movsx esi, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdx]
xchg dx, bx
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 66
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
