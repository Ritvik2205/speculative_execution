.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
cmovb rbx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rbx], ax
lea bx, qword ptr [rbx + rcx + 77]
or edx, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edx
and rdx, 0b1111111111111 # instrumentation
cmovs ax, word ptr [r14 + rdx]
add dl, -10 # instrumentation
cmovns eax, ecx
xor bx, 77
xchg rsi, rcx
and rbx, 0b1111111111111 # instrumentation
add qword ptr [r14 + rbx], rdi
and rdx, 0b1111111111111 # instrumentation
cmovnz rdx, qword ptr [r14 + rdx]
xor cl, 89
btr ebx, ecx
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
add cl, -70 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
btc esi, ebx
mul rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
