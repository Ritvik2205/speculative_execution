.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -123 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnl ecx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
setp dl
movsx ecx, di
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
add al, 74
cmovns ebx, edi
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], 112
cmp cl, cl
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 7
lea eax, qword ptr [rcx + rcx + 52039]
add ebx, 2
adc edi, 117
or si, bx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
