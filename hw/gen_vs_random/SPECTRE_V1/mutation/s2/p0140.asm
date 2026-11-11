.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
add cl, 46 # instrumentation
sbb rax, -91
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 1
not dl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
test ax, -32457
test ebx, eax
sub bl, bl
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
cmp edx, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
