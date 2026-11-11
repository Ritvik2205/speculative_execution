.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], edx
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], bx
or eax, eax
btr si, 52
and rdx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdx], 81
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], -12
xor si, 80
and rbx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rbx]
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rcx, rdx
xor rcx, -2
cmovs ebx, ecx
and dil, -48 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovno ebx, dword ptr [r14 + rdi]
xor eax, 984871847
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], -92
bts edx, 189
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], dx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
test edx, edi
bts dx, 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
