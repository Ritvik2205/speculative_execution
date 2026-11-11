.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov bl, byte ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
cmp cx, word ptr [r14 + rdi]
or di, 65
dec eax
cwd
sub dl, -49
and rdi, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdi]
cmovno rdi, rbx
and rax, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rax], rax
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], 55
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
add dl, 120 # instrumentation
adc dil, 85
movzx rsi, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
