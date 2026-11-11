.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rsi], ebx
and rax, 0b1111111111111 # instrumentation
add byte ptr [r14 + rax], cl
lea cx, qword ptr [rcx + rdx]
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], esi
add sil, sil
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rax]
lea eax, qword ptr [rdx + rcx + 86]
add dil, bl
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], eax
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], dx
xor sil, al
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], bx
and rdx, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
