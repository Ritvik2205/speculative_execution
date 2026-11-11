.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnb edx, dword ptr [r14 + rdi]
adc ax, -27488
and rbx, 0b1111111111111 # instrumentation
movzx rbx, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
adc al, cl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 47
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], -56
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
mov dl, 58
and rcx, 0b1111111111111 # instrumentation
cmovno eax, dword ptr [r14 + rcx]
cmp bl, -114
and rcx, 0b1111111111111 # instrumentation
cmovo rcx, qword ptr [r14 + rcx]
sbb ecx, 84
setnb dl
and rcx, 0b1111111111111 # instrumentation
sub edx, dword ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rax], rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
