.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovo eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rax], bl
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 6
mov rax, -6437636498926413678
and cl, 89
add al, 84 # instrumentation
btc ax, ax
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rax]
add cl, 59 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rsi, qword ptr [r14 + rax]
btc di, 237
add rsi, 77
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], 25
sub sil, dl
and rbx, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rbx], rdi
adc rcx, rcx
bt bx, 70
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
