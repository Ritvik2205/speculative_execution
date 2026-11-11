.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 1
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
not dl
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -78
add cl, 46 # instrumentation
sbb rax, -91
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
sub bl, bl
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmp edx, 44
test ax, 636
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
test ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
