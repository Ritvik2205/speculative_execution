.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rdi]
add al, 9 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
movzx di, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub ecx, dword ptr [r14 + rcx]
add bx, -65
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rcx]
lea ecx, qword ptr [rbx + rcx + 13259]
and rsi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsr cx, word ptr [r14 + rdi]
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 18
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rsi
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], al
add bl, 39 # instrumentation
cmovo eax, edx
lea rax, qword ptr [rsi + rax + 43]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
