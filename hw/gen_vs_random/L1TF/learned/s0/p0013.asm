.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovle esi, dword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsr edx, dword ptr [r14 + rax]
and esi, eax
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
lea eax, qword ptr [rdi + rdx + 28]
cmovl rdi, rdi
adc rbx, 75
and rbx, 0b1111111111111 # instrumentation
mov si, word ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
dec word ptr [r14 + rsi]
lea rsi, qword ptr [rdx + rcx]
setle dl
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], -11
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], -38
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
