.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 36 # instrumentation
lea edi, qword ptr [rdi + rdx + 13440]
and rbx, 0b1111111111111 # instrumentation
cmovbe edi, dword ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rdi], -58
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], 56
cmovnz ebx, esi
cmp rax, 834498504
and rdi, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdi], rdx
movzx edx, di
jmp .bb_0.1
.bb_0.1:
test dl, -37
and rdi, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdi], rbx
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], rdi
and rcx, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], -28668
sbb rbx, -117
and rsi, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rsi], 21
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
