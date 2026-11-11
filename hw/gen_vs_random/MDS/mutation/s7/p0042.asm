.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr si, 52
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
or cl, cl
cmovns edx, ecx
or rax, 1020005579
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
xor cl, 55
xor al, 9
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
bt edx, esi
or rcx, -17
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
