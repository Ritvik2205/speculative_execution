.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rbx]
xor sil, -33
sub sil, al
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
xchg ecx, ebx
and rbx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rbx]
add al, -53 # instrumentation
sbb cl, bl
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rdi], 13
or cl, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv cl
and rdi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdi], 35
and rdx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rdx], eax
or ax, 19104
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], 19
xor sil, al
xor rbx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
