.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rdi]
add al, 83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
add al, -9 # instrumentation
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -83
and rdi, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], bx
and rcx, 0b1111111111000 # instrumentation
lock inc word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
adc si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
movsx rbx, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rbx], edi
and rbx, 0b1111111111111 # instrumentation
cmovz rdi, qword ptr [r14 + rbx]
sbb bl, cl
sub al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
