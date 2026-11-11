.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, 86 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb bl, byte ptr [r14 + rdx]
or dl, dil
and rcx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rcx], al
and rcx, 0b1111111111111 # instrumentation
and dl, byte ptr [r14 + rcx]
cmp cl, 57
lea rbx, qword ptr [rdx + rcx]
xor dl, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], rdi
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rax]
jmp .bb_0.3
.bb_0.3:
cbw
and rax, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
