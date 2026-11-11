.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
mul word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], dx
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ebx
dec cl
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 26
cmovl rdx, rdx
cmovnle rsi, rsi
bt rcx, rax
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], eax
bt rdx, rsi
lea dx, qword ptr [rbx + rax + 72]
and rcx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rcx], esi
and rdi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rdi]
not sil
lea rdx, qword ptr [rdi + rbx + 6421]
adc cl, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
