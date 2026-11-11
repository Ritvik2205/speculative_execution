.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cl, dil
or cx, 49
xor sil, dil
and rdi, 52
cmovb bx, dx
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 1
and rdx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdx], 13
and rdx, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rdx]
test dil, dl
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 6
or si, -12
and rsi, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btr word ptr [r14 + rsi], dx
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 56
and rax, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rax]
not rdi
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], si
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
