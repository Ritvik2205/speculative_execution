.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 46 # instrumentation
sbb rax, -91
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 1
not dl
and rcx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rcx], -30
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dl
and rax, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
and rax, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rax]
jp .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
movzx eax, byte ptr [r14 + rdi]
test ebx, eax
test ax, 636
and rcx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rcx]
cmp edx, 44
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], bx
sub bl, bl
jmp .bb_0.2
.bb_0.2:
add cl, 89 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], cx
bt ecx, 204
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], 1 # instrumentation
and edx, dword ptr [r14 + rsi] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], -26
cmp dl, 71
and rsi, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rsi], cl
and rdx, 0b1111111111111 # instrumentation
cmovo rax, qword ptr [r14 + rdx]
sub cl, bl
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
lea si, qword ptr [rbx + rbx + 1252]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
