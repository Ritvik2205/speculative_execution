.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
and rdi, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rbx
xor cl, al
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], bl
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 37
and rax, 0b1111111111111 # instrumentation
imul esi, dword ptr [r14 + rax], 83
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and rax, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rax], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
