.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rbx], 80
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rdx]
mov dil, sil
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], -12
sub dx, -23
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], sil
sub edx, -63
and rcx, 0b1111111111111 # instrumentation
sub rdx, qword ptr [r14 + rcx]
add dl, -16 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], 1
cmovno edx, esi
cmp sil, 25
add cl, 46 # instrumentation
sbb rdx, 48
or dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
