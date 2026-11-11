.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
xor cl, 15
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
or rcx, 54
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
btr si, 52
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
cmovns edx, ecx
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
or rax, 1020005579
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
xor al, 115
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
or cl, cl
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
