.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovp rsi, rcx
and rbx, 0b1111111111111 # instrumentation
cmovnp rsi, qword ptr [r14 + rbx]
cmovnbe rdx, rbx
and rsi, 0b1111111111111 # instrumentation
imul rax, qword ptr [r14 + rsi]
cmovz rcx, rax
js .bb_0.1
jmp .exit_0
.bb_0.1:
movsx bx, cl
cmovnb rsi, rcx
add cl, cl
and rdx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], ebx
cmp rax, 1189904463
sbb dil, -106
and rcx, 0b1111111111111 # instrumentation
add ecx, dword ptr [r14 + rcx]
add bl, -98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
adc word ptr [r14 + rbx], ax
and rcx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rcx], bl
and rax, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rax]
sbb ecx, 89
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
