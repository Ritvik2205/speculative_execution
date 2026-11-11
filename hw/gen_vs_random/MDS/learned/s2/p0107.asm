.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rcx]
xor cl, 15
or cl, sil
xor bl, dil
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
cmovnp cx, word ptr [r14 + rdx]
test ecx, -1843375753
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
or al, -17
and rdi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdi], -109
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], 5
or al, 30
xor bl, -61
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bts dword ptr [r14 + rdx], esi
or dl, -8
and rdi, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
