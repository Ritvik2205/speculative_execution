.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 35
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], 6
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
cmovnbe dx, dx
or ax, 0b1000000000000000 # instrumentation
bsf dx, ax
bt ecx, ebx
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdx]
dec rdx
add dl, 90 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl edx, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
sub ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovns cx, word ptr [r14 + rbx]
adc rdi, -75
and rdi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdi], 2
lea si, qword ptr [rax]
cmovs cx, si
and dl, 44
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
