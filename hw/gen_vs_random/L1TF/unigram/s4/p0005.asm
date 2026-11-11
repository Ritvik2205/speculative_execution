.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rax], eax
sbb bl, -88
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
btc ax, bx
not edx
sbb rdx, 98
and rbx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rbx], 85
sub eax, edx
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
add rbx, 99
sbb ax, di
add cl, -33 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
btr eax, 231
or rdi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rdi
cmovno cx, cx
and rdi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edi, ecx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
