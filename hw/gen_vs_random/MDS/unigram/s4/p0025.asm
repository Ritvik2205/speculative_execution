.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
and rbx, 0b1111111111111 # instrumentation
and esi, dword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
or edx, ecx
cmovz rbx, rdi
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edi, edi
and dl, 110 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovnp edx, dword ptr [r14 + rsi]
test rcx, 4
bts ax, cx
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 2
or rcx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rcx
or dl, -115
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 56
or ax, 0b1000000000000000 # instrumentation
bsr di, ax
test di, 18
and rbx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rbx], rdx
xor dil, 49
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], 32
xor dil, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
