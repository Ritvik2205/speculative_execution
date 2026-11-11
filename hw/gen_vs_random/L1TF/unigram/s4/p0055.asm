.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock xor qword ptr [r14 + rdx], 90
and rdi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rdi], rax
and rsi, 0b1111111111111 # instrumentation
and eax, dword ptr [r14 + rsi]
cmovo rdi, rdi
mul esi
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
not edx
setl dil
and rdx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdx], -100
xor al, sil
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 121
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx]
xor rdx, 122
bt rax, rdx
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
