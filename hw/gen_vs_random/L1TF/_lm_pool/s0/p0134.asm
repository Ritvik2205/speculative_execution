.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rdi], 92
and rsi, 0b1111111111111 # instrumentation
or ecx, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], cx
and dl, dl
cmp rdi, 95
jmp .bb_0.1
.bb_0.1:
add al, 65 # instrumentation
cmovo rax, rdi
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
cmovnle rdi, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdx], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
