.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmp dil, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
movsx cx, byte ptr [r14 + rbx]
btr eax, 47
and rcx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rbx]
add cl, 42 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnbe dx, word ptr [r14 + rsi]
imul edx, eax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], ebx
jmp .bb_0.1
.bb_0.1:
lea eax, qword ptr [rdx + rdx]
cbw
add bl, dl
add al, 54 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rax]
sub dil, -70
and rax, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rax], 90
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
