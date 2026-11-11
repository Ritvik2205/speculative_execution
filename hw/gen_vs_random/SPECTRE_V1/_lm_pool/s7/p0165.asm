.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or ebx, ecx
or cl, -98
bt edx, 92
add dl, dl
lea eax, qword ptr [rsi + rsi + 58]
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rbx, 0b1111111111111 # instrumentation
cmovno ecx, dword ptr [r14 + rbx]
lea ax, qword ptr [rsi + rcx + 55]
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], cl
xor di, 88
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
