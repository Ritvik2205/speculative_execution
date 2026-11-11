.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovl edx, ebx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], 73
and rax, 0b1111111111111 # instrumentation
movsx edi, byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rcx]
add al, -27 # instrumentation
and rsi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rsi], 37
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], 77
and rsi, 0b1111111111111 # instrumentation
sub rcx, qword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
test dl, 72
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], dl
and rcx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rcx], 85
or bl, bl
mov cx, 15
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 100
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
and rax, 0b1111111111111 # instrumentation
add rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
