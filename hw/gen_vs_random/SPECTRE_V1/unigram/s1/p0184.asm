.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and cl, -57
add al, 41 # instrumentation
and rdx, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub esi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rbx], 7
and rdi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdi], rsi
jb .bb_0.1
jmp .exit_0
.bb_0.1:
cmp al, 53
bt esi, eax
and rdx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdx]
add cl, -127
and rdi, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rdi], dx
mul bl
and rcx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rcx], 4
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], dx
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
and rcx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
