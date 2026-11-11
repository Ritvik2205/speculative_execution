.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rcx, qword ptr [rax + rdi + 64855]
and rcx, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rcx]
imul bl
add dl, -42 # instrumentation
lea edi, qword ptr [rdx]
lea rcx, qword ptr [rdx]
cmovnbe rbx, rsi
xor sil, 1
test al, 70
cmovnbe rbx, rax
and rdx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
cmovp ebx, edi
and rcx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rcx]
lea cx, qword ptr [rdi + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rcx], bl
xor eax, 1034314125
imul rax, rbx
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 22
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
