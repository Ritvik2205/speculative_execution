.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test cx, di
and rdi, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rbx]
add sil, -70 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl eax, dword ptr [r14 + rsi]
lea edi, qword ptr [rbx + rdx]
sub dx, 34
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], -106
xor rcx, 44
and rbx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovl rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rcx], rbx
and rax, rdi
and eax, -409673666
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
