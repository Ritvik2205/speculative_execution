.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rdx]
and dl, bl
add cl, -51 # instrumentation
cmovl eax, edx
xor bl, -38
add bx, dx
and rbx, 85
add al, sil
and rsi, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rsi], esi
movsx bx, cl
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rcx], 98
and rbx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rbx]
add rdx, 95
not ax
adc dl, 48
and rax, 0b1111111111111 # instrumentation
btc qword ptr [r14 + rax], 8
lea di, qword ptr [rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
