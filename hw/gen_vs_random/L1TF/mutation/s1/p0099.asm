.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
setnbe dl
cmovl ecx, edi
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 1 # instrumentation
mov ax, 1 # instrumentation
div byte ptr [r14 + rdi]
sbb rsi, rax
add dl, -83 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnl rdi, qword ptr [r14 + rdx]
add al, 121 # instrumentation
setnb bl
cmovl cx, dx
and rsi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rsi], rax
xor bl, dl
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
cmovb rdx, qword ptr [r14 + rsi]
adc bl, 86
and rdi, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rdi], -98
dec ecx
and rcx, 0b1111111111111 # instrumentation
cmovnl edx, dword ptr [r14 + rcx]
and rbx, 0b1111111111000 # instrumentation
lock neg qword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
