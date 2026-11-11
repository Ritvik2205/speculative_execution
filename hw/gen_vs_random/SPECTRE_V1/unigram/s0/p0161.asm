.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb eax, 27
bt ax, bx
add cl, -109 # instrumentation
and rsi, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rsi], 66
and rdx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdx], 22
and rdi, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
lea rdi, qword ptr [rbx]
and rdi, 0b1111111111111 # instrumentation
add dl, byte ptr [r14 + rdi]
lea rdx, qword ptr [rax + rdx + 30]
add dl, 118 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rbx], ax
movsx dx, bl
sub cl, 23
test di, 47
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], 54
and rax, 0b1111111111000 # instrumentation
lock dec qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
