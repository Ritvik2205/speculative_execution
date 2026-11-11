.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea rax, qword ptr [rax + rsi + 18]
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
cmp cl, cl
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rdx, qword ptr [r14 + rdx]
xor si, -50
or dx, 55
lea eax, qword ptr [rax + rbx + 90]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
add bl, 6 # instrumentation
cmovl edx, ebx
jmp .bb_0.1
.bb_0.1:
setle al
and rdx, 0b1111111111111 # instrumentation
movsx di, byte ptr [r14 + rdx]
sbb bx, ax
and rdx, 0b1111111111111 # instrumentation
sbb dword ptr [r14 + rdx], 109
and rbx, 0b1111111111000 # instrumentation
and edx, 0b111 # instrumentation
lock btc dword ptr [r14 + rbx], edx
xor cl, dl
cmovb edx, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
