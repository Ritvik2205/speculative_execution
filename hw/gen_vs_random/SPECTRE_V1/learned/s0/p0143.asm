.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rdi], 56
lea rax, qword ptr [rsi]
and bl, bl
and rsi, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rsi]
or di, cx
and rcx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rcx], 92
and rdx, 0b1111111111111 # instrumentation
cmovnle ebx, dword ptr [r14 + rdx]
bt ecx, 198
or bl, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
add dl, 63 # instrumentation
cmovl dx, di
sbb eax, 48
movsx ax, al
and rdi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdi], 93
and rdx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rdx]
cmovns rsi, rsi
xor al, 86
adc ax, -26452
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
