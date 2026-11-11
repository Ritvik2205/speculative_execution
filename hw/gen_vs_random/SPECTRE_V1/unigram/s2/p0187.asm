.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg sil, cl
movsx rdi, bx
sub rcx, 13
lea dx, qword ptr [rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rax]
jnp .bb_0.1
jmp .exit_0
.bb_0.1:
dec dl
or dl, 41
or ebx, -124
add bl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rdi, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmp cl, byte ptr [r14 + rbx]
movsx esi, dl
sub bl, bl
add rsi, 109
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], 42
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
