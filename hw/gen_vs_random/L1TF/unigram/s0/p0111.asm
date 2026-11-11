.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
cmovnz rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
cmovbe rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rdi]
imul rsi, rsi, 69
xchg dl, cl
and rdx, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdx]
adc ebx, edi
add dl, 109 # instrumentation
sbb bl, 120
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rcx], 78
mov rax, -6437636498926413678
and rbx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rbx], ecx
or rdx, 1 # instrumentation
add al, 122 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
