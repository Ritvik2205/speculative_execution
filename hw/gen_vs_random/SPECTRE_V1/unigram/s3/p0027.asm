.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea ax, qword ptr [rbx]
movzx ebx, al
and rcx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rcx], 99
add al, -94 # instrumentation
or sil, al
and rcx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rcx]
xor al, al
and rcx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rcx], ebx
and rax, rax
dec cl
jl .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], -1
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
and rcx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bt word ptr [r14 + rcx], cx
and rsi, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rsi], 3
cmp ax, -11439
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 32
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
