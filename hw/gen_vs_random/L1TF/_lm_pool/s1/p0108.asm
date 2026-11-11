.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add sil, 104 # instrumentation
mov esi, 69
and dl, dil
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rax]
xor sil, 64
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
or al, cl
jmp .bb_0.1
.bb_0.1:
add al, -46
and rcx, 0b1111111111111 # instrumentation
btr dword ptr [r14 + rcx], 6
jmp .bb_0.2
.bb_0.2:
and bl, -56 # instrumentation
cmovnle eax, ebx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
