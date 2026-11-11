.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg rax
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], eax
add si, 63
mul rax
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
sub esi, 62
and rbx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rbx], dil
cmovb edi, eax
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 57
movzx bx, sil
add cl, -93 # instrumentation
xchg rsi, rcx
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], edi
sub dl, 4
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rdx]
and sil, 69
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
