.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rsi, rdx
and rdi, 0b1111111111111 # instrumentation
mov ebx, dword ptr [r14 + rdi]
and rdx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], edx
add bl, -61 # instrumentation
seto bl
movsx edi, di
and rdi, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdi], -93
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 1371410782
and rbx, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rbx], 103
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
js .bb_0.1
jmp .exit_0
.bb_0.1:
lea si, qword ptr [rsi + rsi]
and rdx, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rdx]
add al, -44
and rbx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rbx], 0
add bl, 97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
cmp rdx, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
