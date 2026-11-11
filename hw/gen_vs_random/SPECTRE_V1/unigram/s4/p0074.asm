.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
adc dl, 48
cmovb edx, ebx
and di, 51
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
adc al, -92
add dl, 126 # instrumentation
cmovnl cx, dx
jp .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rbx], 48
and rbx, 0b1111111111111 # instrumentation
movsx bx, byte ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], rsi
setnp dil
lea rbx, qword ptr [rax + rcx]
and rdi, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdi], sil
add dl, -125 # instrumentation
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], 119
and rax, 0b1111111111111 # instrumentation
add dword ptr [r14 + rax], 2
sub bl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
