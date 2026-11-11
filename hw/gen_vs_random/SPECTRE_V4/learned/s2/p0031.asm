.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or di, ax
cmp rax, 2115020203
and rdi, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rdi]
cmp bx, si
and rax, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rax]
cmovnp bx, bx
lea rcx, qword ptr [rbx + rdx + 30]
lea di, qword ptr [rcx]
inc sil
and rdx, 0b1111111111111 # instrumentation
movzx rdx, word ptr [r14 + rdx]
lea rdi, qword ptr [rsi]
add rdx, rax
and rsi, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rsi]
mov rsi, 84
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], sil
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], dl
sub rax, -701741274
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], rdi
imul di, si
add dl, -26 # instrumentation
btr edx, 30
cmovz edi, esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
