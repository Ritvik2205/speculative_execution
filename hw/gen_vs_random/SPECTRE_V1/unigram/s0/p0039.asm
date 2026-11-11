.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 54
and bl, al
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
sub cl, -21
add dl, 113 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
and cl, dil
bswap rax
lea ecx, qword ptr [rcx]
and rbx, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], bx
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rbx]
add dl, 52 # instrumentation
sets al
and rdx, 0b1111111111111 # instrumentation
or rsi, qword ptr [r14 + rdx]
btr esi, edx
not rdx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
