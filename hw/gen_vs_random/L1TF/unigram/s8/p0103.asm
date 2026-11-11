.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rax], rax
lea esi, qword ptr [rbx + rbx]
and rdi, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 85
cmovnb edx, eax
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -62
lea ax, qword ptr [rdx + rbx]
setp bl
lea rdi, qword ptr [rdi + rax + 66]
neg al
xor bx, di
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
cmovnbe rcx, rbx
lea di, qword ptr [rdx + rdi]
add dil, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
