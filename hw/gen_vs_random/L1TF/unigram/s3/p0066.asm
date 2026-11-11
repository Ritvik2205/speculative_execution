.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb di, dx
and rax, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
add di, word ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rbx]
add dx, -51
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr ebx, dword ptr [r14 + rbx]
add bl, -4 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rcx]
sub dl, bl
xor bl, dl
and rdi, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rbx], -14
and rdx, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdx]
add cl, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp rax, qword ptr [r14 + rdi]
add sil, dil
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
