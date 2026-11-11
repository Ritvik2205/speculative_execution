.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 44 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 10
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 1 # instrumentation
and edx, dword ptr [r14 + rbx] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rbx]
or al, 19
adc ecx, 11
jle .bb_0.1
jmp .exit_0
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rcx], rax
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
sub qword ptr [r14 + rbx], rdx
and rsi, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock adc dword ptr [r14 + rax], eax
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], 55
xor dl, dl
mul cx
setz al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
