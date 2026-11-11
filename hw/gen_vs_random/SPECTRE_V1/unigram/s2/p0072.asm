.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc rbx, 69
dec al
add bl, -42 # instrumentation
lea eax, qword ptr [rbx]
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], ecx
setnl bl
and rdx, 0b1111111111111 # instrumentation
cmovns ebx, dword ptr [r14 + rdx]
setnz al
or dl, dl
and rdx, 0b1111111111111 # instrumentation
mul qword ptr [r14 + rdx]
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
neg word ptr [r14 + rdx]
or al, al
cmovnbe rdx, rbx
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
bt dword ptr [r14 + rsi], eax
and rax, 0b1111111111111 # instrumentation
dec dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
adc dword ptr [r14 + rdx], 70
test eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
