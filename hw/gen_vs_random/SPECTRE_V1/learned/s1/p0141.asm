.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 29 # instrumentation
setnb sil
lea eax, qword ptr [rdi]
setno dl
and rsi, 0b1111111111111 # instrumentation
add rdi, qword ptr [r14 + rsi]
xor ax, -2537
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rax
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], 13
add edi, esi
lea ebx, qword ptr [rdi]
cmovl rbx, rdi
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 80
xchg ebx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
