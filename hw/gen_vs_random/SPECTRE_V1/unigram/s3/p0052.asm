.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test bl, -8
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 70
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
and dword ptr [r14 + rax], -64
and dil, -114
and rdx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 60
add cl, 42 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb ebx, dword ptr [r14 + rax]
movzx cx, bl
cmp al, 46
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor rdx, rbx
imul cl
xor rax, 620504108
and rcx, 0b1111111111111 # instrumentation
cmp rsi, qword ptr [r14 + rcx]
add cl, -98 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rcx], di
lea ax, qword ptr [rsi + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
