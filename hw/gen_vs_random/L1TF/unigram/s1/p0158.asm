.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rbx]
lea esi, qword ptr [rbx]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rbx]
or dl, -92
imul rsi, rsi
cwde
add eax, 109
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
and rdx, 0b1111111111111 # instrumentation
mov rax, qword ptr [r14 + rdx]
test rdx, rdi
and rsi, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rsi]
setnbe cl
and rax, 0b1111111111111 # instrumentation
adc word ptr [r14 + rax], ax
add dl, -10 # instrumentation
cmovns edi, edx
sub dl, 41
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
