.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, -1523798580
or rcx, 54
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], si
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -46
xor al, -4
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -57
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or cl, cl
cmovns edx, ecx
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], 0b1000000000000000000000000000000 # instrumentation
bsr rbx, qword ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], esi
and rcx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rcx], 1
btr si, 52
and rsi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rsi], cx
xor cl, 24
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
bt edx, esi
and rax, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
