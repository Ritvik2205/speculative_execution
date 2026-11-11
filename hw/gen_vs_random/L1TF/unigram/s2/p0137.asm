.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor sil, cl
and sil, bl
and rbx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rbx], 38
inc bl
and rcx, 0b1111111111111 # instrumentation
imul rdi, qword ptr [r14 + rcx]
imul rbx, rbx, 24
and rbx, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], sil
jmp .bb_0.1
.bb_0.1:
setnb bl
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
add cl, -23 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo rdi, qword ptr [r14 + rbx]
adc ax, -8436
sbb sil, bl
btc rdx, 6
cmovle cx, cx
or rbx, rax
or edx, 45
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
