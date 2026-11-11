.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 6
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
or rax, 302048971
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
btr si, 208
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
or rcx, 54
or cl, cl
cmovns edx, ecx
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
bt edx, esi
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
xor al, 9
xor cl, 98
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
