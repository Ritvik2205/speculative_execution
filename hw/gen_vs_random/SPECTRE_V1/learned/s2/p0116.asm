.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 12 # instrumentation
cmovnb ecx, edx
lea di, qword ptr [rsi]
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], al
cmovno bx, cx
and rcx, 0b1111111111111 # instrumentation
and edx, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edx
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf ebx, edi
xchg dil, cl
sbb bl, cl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
and rsi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rsi], 102
and rbx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rbx]
lea eax, qword ptr [rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
