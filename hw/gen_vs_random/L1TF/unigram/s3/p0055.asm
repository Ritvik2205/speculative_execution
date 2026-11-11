.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
and rcx, 0b1111111111111 # instrumentation
imul di, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
movzx edi, byte ptr [r14 + rbx]
or rsi, 35
and rax, 0b1111111111111 # instrumentation
imul edx, dword ptr [r14 + rax]
lea rdi, qword ptr [rdi + rax]
and rsi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rsi], 88
and rax, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rax]
cmp al, al
xor bl, dl
lea rcx, qword ptr [rdx]
bswap rbx
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], dl
add al, 24 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rbx]
or sil, -44
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], edx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
