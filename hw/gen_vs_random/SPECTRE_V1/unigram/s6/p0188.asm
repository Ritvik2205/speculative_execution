.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
adc rdi, qword ptr [r14 + rcx]
xchg bl, al
and rax, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rax], ecx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
and rsi, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rsi], 4
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], -42
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf eax, ecx
jb .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rbx], dx
lea rax, qword ptr [rcx + rbx + 71]
lea ax, qword ptr [rdi + rbx]
and rbx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rbx]
or al, 19
add bl, -61 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], -39
and rbx, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
