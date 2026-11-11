.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rbx
btr edi, 31
test al, cl
and rsi, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
lea rax, qword ptr [rdi]
sub di, 15
and rax, 0b1111111111111 # instrumentation
sub bx, word ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
movzx rsi, word ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edi
lea si, qword ptr [rcx]
xor cx, 113
add cl, 123 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovp edx, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rdx], 26
btc rdx, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
