.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor cx, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 194454182
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dil
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
and rax, 0b1111111111111 # instrumentation
or di, word ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rdx], 5
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
jmp .bb_0.1
.bb_0.1:
test ebx, -2015966884
and bl, bl
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
test rdx, 59
test bl, -14
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], bl
and rcx, -63
and rdi, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
