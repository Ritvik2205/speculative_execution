.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, 122 # instrumentation
cmovnbe ebx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnbe rax, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rbx]
or sil, -8
or al, cl
or rdi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rdi
and rax, 0b1111111111111 # instrumentation
cmovnb rdi, qword ptr [r14 + rax]
or rdi, 67
and rcx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 66
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 68
and rbx, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], rdx
and bl, 69
xor al, -119
or rax, 0b1000000000000000000000000000000 # instrumentation
bsf rsi, rax
and rsi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rsi], 3
not al
bts bx, dx
test rax, 1732677821
cmovnz rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
