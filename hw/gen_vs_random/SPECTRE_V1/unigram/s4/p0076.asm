.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 1 # instrumentation
and rax, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rax], 52
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], cl
xor bl, bl
lea eax, qword ptr [rsi]
not ecx
imul ebx, esi, 15
and rdi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], dil
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], cx
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], dl
and rax, 0b1111111111111 # instrumentation
cmovo edx, dword ptr [r14 + rax]
add cl, 112 # instrumentation
sbb ecx, 100
jo .bb_0.1
jmp .exit_0
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rax]
adc eax, 56
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsf rdi, qword ptr [r14 + rbx]
test rdi, -1846965753
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
