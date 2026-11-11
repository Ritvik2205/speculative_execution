.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, dl
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rdi
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 3
add rdx, 59
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
or ebx, 1 # instrumentation
and edx, ebx # instrumentation
shr edx, 1 # instrumentation
div ebx
and rbx, 0b1111111111111 # instrumentation
sub dl, byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rcx], rdi
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 87
and rbx, 0b1111111111111 # instrumentation
xor eax, dword ptr [r14 + rbx]
dec bl
and bl, 92
adc ax, ax
xor cl, cl
cmovo di, di
cmovo rdx, rdi
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
