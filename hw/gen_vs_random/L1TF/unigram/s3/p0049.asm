.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 89 # instrumentation
adc al, cl
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
cmovl si, si
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ecx
and rdi, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 97
xor al, bl
dec sil
lea rax, qword ptr [rcx + rax + 34]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 55
and rsi, 0b1111111111111 # instrumentation
cmovnz ecx, dword ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rbx], 56
and rdx, 0b1111111111111 # instrumentation
imul eax, dword ptr [r14 + rdx], 86
and rdi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
