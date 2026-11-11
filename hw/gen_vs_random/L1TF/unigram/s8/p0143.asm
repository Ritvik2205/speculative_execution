.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rdx
and rdi, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdi], 34
add sil, al
add bx, 12
cmovle rax, rsi
and rbx, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], ebx
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rdx
lea ecx, qword ptr [rsi]
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], ebx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], bx
bt dx, 132
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
lea rcx, qword ptr [rdi + rdi]
cmovs rcx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnz cx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
