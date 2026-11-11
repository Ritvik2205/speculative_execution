.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], -55
and rsi, 0b1111111111111 # instrumentation
mov edx, dword ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], bl
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], edx
and rdx, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdx], 41
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 95
and rax, 0b1111111111111 # instrumentation
and byte ptr [r14 + rax], cl
not eax
cmovnle ebx, eax
lea rcx, qword ptr [rbx]
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
and rcx, 0b1111111111000 # instrumentation
lock sub qword ptr [r14 + rcx], 23
and rdx, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rdx]
add al, -21 # instrumentation
mov esi, ebx
and rbx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rbx]
adc dl, 4
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
