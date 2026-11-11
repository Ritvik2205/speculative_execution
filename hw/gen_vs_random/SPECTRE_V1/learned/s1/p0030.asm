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
xor rsi, 73
bts rsi, 234
and rbx, 0b1111111111111 # instrumentation
cmp rdx, qword ptr [r14 + rbx]
and rdx, rbx
lea rsi, qword ptr [rdx]
and rcx, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rcx]
lea cx, qword ptr [rdi + rdi]
test bl, 27
test cl, dl
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], -112
and rcx, 0b1111111111000 # instrumentation
lock sub dword ptr [r14 + rcx], 11
test ax, ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
