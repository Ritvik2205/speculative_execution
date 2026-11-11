.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
setz cl
test al, -5
adc ecx, 99
adc di, 13
and rbx, 0b1111111111111 # instrumentation
sub cx, word ptr [r14 + rbx]
lea edx, qword ptr [rsi]
jmp .bb_0.1
.bb_0.1:
sbb al, dl
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 4
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
lea rdx, qword ptr [rcx + rax + 100]
and rbx, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor ebx, dword ptr [r14 + rax]
lea ecx, qword ptr [rcx]
mov ax, 21
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
