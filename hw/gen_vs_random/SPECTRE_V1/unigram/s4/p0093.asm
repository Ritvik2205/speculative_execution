.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rdi], rdi
and rbx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rbx]
or si, 0b1000000000000000 # instrumentation
bsr dx, si
or rcx, 37
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], 84
sbb bl, dl
and rcx, 0b1111111111000 # instrumentation
lock bts qword ptr [r14 + rcx], 16
and rcx, 0b1111111111111 # instrumentation
cmovl edi, dword ptr [r14 + rcx]
jp .bb_0.1
jmp .exit_0
.bb_0.1:
imul rdx, rsi, 67
setns dl
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], di
lea rax, qword ptr [rdx + rax + 98]
and rsi, 0b1111111111111 # instrumentation
test qword ptr [r14 + rsi], rax
adc dl, 67
and rsi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rsi], esi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
