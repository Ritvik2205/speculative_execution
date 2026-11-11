.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add bl, 27 # instrumentation
setnle bl
lea rdx, qword ptr [rdx]
cmp bl, 123
and dx, 95
and rcx, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rcx], 16
setno al
and sil, 93
and dil, 58
and rcx, 0b1111111111111 # instrumentation
cmovz rbx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
movzx edi, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovle rdx, qword ptr [r14 + rbx]
and rsi, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rsi]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], 54
and rax, 0b1111111111111 # instrumentation
sub rsi, qword ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
