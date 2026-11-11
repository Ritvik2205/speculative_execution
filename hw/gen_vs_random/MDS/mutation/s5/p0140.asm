.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, 52
xor cl, 15
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
bt edx, esi
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
xor al, 122
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
or rcx, -17
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
btr si, 208
cmovns edx, ecx
or cl, cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
