.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -101 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rax]
sbb cl, 105
lea dx, qword ptr [rax + rdx]
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
cmovnle rdi, rdx
lea edi, qword ptr [rsi]
lea rax, qword ptr [rax + rbx]
or ax, 18658
jns .bb_0.1
jmp .bb_0.2
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
btr rdx, rax
add cl, -123 # instrumentation
cmovnp rdi, rdx
and rbx, 0b1111111111111 # instrumentation
cmovo rbx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
neg qword ptr [r14 + rdx]
test dl, -105
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
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
