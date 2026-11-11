.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovns rbx, rax
and rdx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
cmovnb rsi, qword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rsi]
test bl, sil
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
cmovl eax, edx
and rsi, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rsi]
xor cl, 55
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], cl
and rbx, 65
jmp .bb_0.1
.bb_0.1:
btr edi, esi
not cl
xor dl, sil
and dl, 34 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 56
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp rdi, qword ptr [r14 + rdx]
and dl, dl
xor al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
