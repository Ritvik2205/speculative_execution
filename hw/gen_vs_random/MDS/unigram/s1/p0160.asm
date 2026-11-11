.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rax], edx
and rsi, 0b1111111111000 # instrumentation
lock not word ptr [r14 + rsi]
and al, 122 # instrumentation
cmovnb rax, rdx
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
cmovl rbx, rdx
and rdi, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdi]
and dil, 92
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], 64
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 43
test bl, 106
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], cx
and rbx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btr qword ptr [r14 + rbx], rdi
test dl, 25
and rbx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], rbx
or dx, 26
xor edi, -47
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
