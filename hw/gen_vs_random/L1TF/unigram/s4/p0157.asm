.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or si, 77
btc eax, ebx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], -105
and rdx, 0b1111111111111 # instrumentation
imul word ptr [r14 + rdx]
or sil, -44
and rsi, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rsi], rcx
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
add dl, -36 # instrumentation
and rax, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rax], edx
jmp .bb_0.1
.bb_0.1:
xchg di, bx
and rdi, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], rdi
lea rdi, qword ptr [rdx + rcx + 43]
or eax, ebx
xor rax, -2072052278
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], 70
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
