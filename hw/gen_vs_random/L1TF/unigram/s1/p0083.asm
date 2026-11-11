.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdx], 48
and rsi, 0b1111111111111 # instrumentation
cmovo cx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
add word ptr [r14 + rdi], bx
lea si, qword ptr [rcx + rcx + 16]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
and rdi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rdi], 5
and rcx, 0b1111111111111 # instrumentation
movsx edx, word ptr [r14 + rcx]
add dl, dil
sbb rax, 2044012157
lea edx, qword ptr [rbx + rsi + 30]
cmp sil, -11
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rsi], bl
cmovl esi, ecx
and rax, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rax], 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
