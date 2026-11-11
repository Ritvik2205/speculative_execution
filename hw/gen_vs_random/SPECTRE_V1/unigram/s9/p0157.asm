.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rsi]
add al, 10 # instrumentation
and rax, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bts dword ptr [r14 + rax], edi
add sil, 2
and rax, rax
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], di
cmovs rdx, rdx
cmovnb rbx, rdi
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rdx], rcx
sbb dx, bx
and rdx, 0b1111111111111 # instrumentation
add byte ptr [r14 + rdx], dl
and rax, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rax]
and dil, 98
mov dl, al
or rbx, 5
xor al, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
