.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, -4 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
cmovnl rbx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rax]
lea rax, qword ptr [rdi + rdx]
and rdi, 0b1111111111111 # instrumentation
adc word ptr [r14 + rdi], 78
and rax, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rax], 36
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
bt edx, 11
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
neg rsi
and rbx, 0b1111111111111 # instrumentation
cmovle rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rcx], 2
cmovs ecx, ecx
setle cl
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
sub esi, edi
not al
imul al
sub ebx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
