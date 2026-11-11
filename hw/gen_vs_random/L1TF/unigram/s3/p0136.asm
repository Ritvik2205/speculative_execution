.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rbx]
xor dl, 19
and rdx, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdx]
xor cl, sil
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], sil
add bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rcx]
sbb dl, -26
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
movzx edx, dx
and rdi, 0b1111111111111 # instrumentation
add esi, dword ptr [r14 + rdi]
imul ax, si, 69
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], al
and rax, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rax], cl
and rax, 0b1111111111111 # instrumentation
cmovnz esi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
cmovbe ecx, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
