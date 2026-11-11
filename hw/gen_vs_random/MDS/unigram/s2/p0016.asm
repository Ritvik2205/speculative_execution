.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], bx
xor sil, -46
or sil, -49
or bl, 100
and al, 101 # instrumentation
cmovno edx, eax
or bl, 13
or al, cl
and rdx, 0b1111111111111 # instrumentation
and rcx, qword ptr [r14 + rdx]
xor ecx, 8
bt rdx, rsi
test rax, rdi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdi], 54
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], cl
and dil, -39
and rdi, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rdi]
cmovp bx, si
and rax, 0b1111111111111 # instrumentation
cmovnbe edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rax], 57
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], bl
cmovs ax, si
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
