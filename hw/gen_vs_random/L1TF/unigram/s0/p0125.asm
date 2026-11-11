.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg ax, bx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], edx
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdx
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rcx]
add sil, 61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rbx]
btc edx, edx
and rax, 0b1111111111111 # instrumentation
imul edi, dword ptr [r14 + rax]
add al, sil
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 68
and rdx, 0b1111111111111 # instrumentation
movzx rdi, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movzx rcx, byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 88
cmovnb rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
