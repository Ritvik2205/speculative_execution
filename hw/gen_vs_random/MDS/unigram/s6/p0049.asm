.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bt edx, 16
bt rax, rcx
and rax, 0b1111111111111 # instrumentation
xor qword ptr [r14 + rax], 42
cmovns si, dx
and rdx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rdx], cx
xor bl, -61
and rsi, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rsi], cx
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
cmovnbe ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rbx]
and cl, cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, ecx
or edx, -1
cmovno rax, rdx
test bl, -114
not cl
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
xor esi, dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rdx]
bts rdi, 130
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
