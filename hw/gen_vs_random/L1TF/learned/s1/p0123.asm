.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rax], 7
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
cmp al, dl
test al, dil
jmp .bb_0.2
.bb_0.2:
and rsi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rsi], edx
jmp .bb_0.3
.bb_0.3:
lea di, qword ptr [rdi]
and rcx, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
bt word ptr [r14 + rcx], ax
and rbx, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rbx]
xor sil, 64
jl .exit_0
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
