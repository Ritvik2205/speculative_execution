.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111000 # instrumentation
lock btc dword ptr [r14 + rax], 2
add al, -104 # instrumentation
and rax, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rax]
lea cx, qword ptr [rax + rcx]
xor cl, cl
and rdx, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
lea ebx, qword ptr [rbx + rdx + 53812]
and rbx, 0b1111111111111 # instrumentation
cmovp rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 3
and rax, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rax], 70
and si, bx
and rax, 0b1111111111111 # instrumentation
sbb cl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
