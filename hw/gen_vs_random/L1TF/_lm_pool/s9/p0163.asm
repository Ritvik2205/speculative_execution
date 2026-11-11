.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, cl
cmp rdi, 99
lea eax, qword ptr [rdx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], 75
and al, dl
sbb bl, -88
sbb si, 97
jmp .bb_0.1
.bb_0.1:
add dl, -52 # instrumentation
adc bx, 45
add eax, 871834813
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and cx, 127
and rcx, 0b1111111111111 # instrumentation
cmovo esi, dword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
