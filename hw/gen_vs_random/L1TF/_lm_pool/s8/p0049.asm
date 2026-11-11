.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rcx], al
bts edx, 74
and rax, 0b1111111111111 # instrumentation
cmovbe edx, dword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
or rbx, 0b1000 # instrumentation
and bl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rbx
lea dx, qword ptr [rcx]
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000000000000000 # instrumentation
bsr dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rcx]
xor rax, 20
test eax, 645518295
add ecx, 43
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
