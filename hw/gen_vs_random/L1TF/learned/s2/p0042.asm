.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and bl, -89 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnle ecx, dword ptr [r14 + rdx]
or ecx, esi
and rax, 0b1111111111111 # instrumentation
imul ebx, dword ptr [r14 + rax], 43
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], 12
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovno rbx, qword ptr [r14 + rcx]
and al, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
and qword ptr [r14 + rax], 38
xor dl, bl
and rbx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
