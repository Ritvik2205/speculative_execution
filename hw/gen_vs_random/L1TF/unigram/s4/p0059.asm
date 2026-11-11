.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xchg dil, al
cmp dx, 47
and rsi, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rsi]
add dx, -51
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rdx]
lea esi, qword ptr [rcx]
lea rax, qword ptr [rdi]
and rbx, rdi
add sil, -117 # instrumentation
and rbx, 0b1111111111111 # instrumentation
movsx rsi, word ptr [r14 + rbx]
mov al, cl
setz cl
sbb cl, 83
and rax, 0b1111111111111 # instrumentation
sbb dx, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
sub al, 28
and rax, 0b1111111111111 # instrumentation
cmovnle edx, dword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
