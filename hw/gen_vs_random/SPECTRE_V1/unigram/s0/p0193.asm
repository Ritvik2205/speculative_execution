.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, cl
and rbx, 0b1111111111111 # instrumentation
cmovp rcx, qword ptr [r14 + rbx]
add dl, -80 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovb edx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], -115
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], dl
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111111 # instrumentation
cmovo di, word ptr [r14 + rdx]
and rax, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rax], bl
test rdi, -1846965753
and rdi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rdi], edi
setnz cl
cmp si, ax
mov di, 18
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], -121
add al, -76 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnp ecx, dword ptr [r14 + rax]
add sil, -52 # instrumentation
and rbx, 0b1111111111111 # instrumentation
sbb rsi, qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
