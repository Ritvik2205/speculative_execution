.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 35 # instrumentation
cmovnz rbx, rdi
and rax, 0b1111111111111 # instrumentation
movsx ebx, word ptr [r14 + rax]
sbb dl, -23
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 4
cmovb eax, eax
jnb .bb_0.1
jmp .bb_0.2
.bb_0.1:
setno al
lea rsi, qword ptr [rbx + rdi]
jp .bb_0.2
jmp .exit_0
.bb_0.2:
sub esi, -120
add al, 110
and rcx, 0b1111111111111 # instrumentation
and di, 0b111 # instrumentation
btc word ptr [r14 + rcx], di
add al, 110
and rcx, 0b1111111111111 # instrumentation
add dword ptr [r14 + rcx], 83
and rbx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rbx], edx
and rbx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rbx]
add bl, bl
and rdx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
