.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add rsi, rdx
sub si, 34
or ax, 31571
add al, 61 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnp dx, word ptr [r14 + rdi]
and rcx, 0b1111111111111 # instrumentation
inc qword ptr [r14 + rcx]
setnbe al
mov rcx, 21
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], dil
add al, -21 # instrumentation
mov ebx, ecx
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
adc qword ptr [r14 + rdi], rbx
lea rdx, qword ptr [rdi + rcx]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
