.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea si, qword ptr [rsi]
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf esi, dword ptr [r14 + rcx]
add si, -5
not dl
and rax, 1163013815
sbb dil, cl
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
lea esi, qword ptr [rsi + rdi + 32]
test bl, 12
lea edi, qword ptr [rbx + rdi + 13]
jmp .bb_0.1
.bb_0.1:
not ebx
and cl, 78
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
