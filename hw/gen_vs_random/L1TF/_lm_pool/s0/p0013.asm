.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
btc ax, di
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mul dword ptr [r14 + rbx]
jmp .bb_0.2
.bb_0.2:
add dil, sil
xor bl, -5
jmp .bb_0.3
.bb_0.3:
and esi, 23
and rcx, 0b1111111111111 # instrumentation
mov edi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
