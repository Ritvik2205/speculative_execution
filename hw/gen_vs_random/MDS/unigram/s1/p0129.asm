.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, 8 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rax]
or rdi, rdx
and rsi, 0b1111111111111 # instrumentation
cmovns ecx, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 1
or cx, 0b1000000000000000 # instrumentation
bsf dx, cx
and rbx, 0b1111111111111 # instrumentation
cmovno rax, qword ptr [r14 + rbx]
cmovno rbx, rdi
or rdx, rax
xor cl, al
cmovl rcx, rax
and rax, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bts qword ptr [r14 + rax], rsi
jmp .bb_0.1
.bb_0.1:
and cl, 49 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns rax, qword ptr [r14 + rbx]
or al, dl
xor dil, 124
xor edx, -13
and cl, 126 # instrumentation
and rsi, 0b1111111111111 # instrumentation
not word ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
btr word ptr [r14 + rax], 7
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
