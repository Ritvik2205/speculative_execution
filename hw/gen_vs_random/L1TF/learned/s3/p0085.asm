.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test di, dx
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
and dl, 59
and rsi, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rsi]
adc ax, 87
xor dil, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rax], 98
xor dl, al
test eax, 645518295
add dil, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
