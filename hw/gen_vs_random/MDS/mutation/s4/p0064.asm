.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
or rax, -1561934807
xor al, -19
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
bt edx, esi
cmovns edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
btr si, 208
or cl, cl
xor cl, 83
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
or rcx, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
