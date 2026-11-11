.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea bx, qword ptr [rbx + rdi]
and rdx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rdx]
jnbe .bb_0.1
jmp .exit_0
.bb_0.1:
cmp sil, cl
test cl, dil
and rsi, 0b1111111111111 # instrumentation
cmovnbe bx, word ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], 67
and rcx, 0b1111111111111 # instrumentation
movzx esi, word ptr [r14 + rcx]
xor dl, dl
lea eax, qword ptr [rdx + rdx + 832]
add bl, -58 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
cmovo di, dx
and rsi, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
add dl, 113 # instrumentation
setnb dl
xor bl, -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
