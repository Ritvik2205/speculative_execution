.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, 120 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rax]
and rax, -175411684
and rcx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rcx]
and rax, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rax], 22
lea eax, qword ptr [rbx]
imul rcx
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
imul edx
lea rbx, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
adc edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rbx], 34
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
imul rbx
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000 # instrumentation
and byte ptr [r14 + rdx], 0b11111000 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rcx], bl
and rax, 0b1111111111111 # instrumentation
sub cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
