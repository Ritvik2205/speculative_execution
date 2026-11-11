.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovb rsi, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], dil
and al, -68
lea cx, qword ptr [rbx + rdi + 10]
btr di, cx
or al, -48
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rdi, 0b111 # instrumentation
lock btc qword ptr [r14 + rdx], rdi
and rdi, 0b1111111111111 # instrumentation
xor ecx, dword ptr [r14 + rdi]
js .bb_0.2
jmp .exit_0
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
