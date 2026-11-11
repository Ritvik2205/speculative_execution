.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg dil
and rbx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rbx], di
xor bl, bl
lea rdx, qword ptr [rdx]
cmovno rax, rbx
btr ax, 197
and rax, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rax], 5
or dx, si
or rdx, 92
jp .bb_0.1
jmp .exit_0
.bb_0.1:
add edx, 55
and rax, 0b1111111111111 # instrumentation
add word ptr [r14 + rax], di
and bl, al
xor dl, dl
sbb dl, al
and rdx, 0b1111111111111 # instrumentation
cmovnle rcx, qword ptr [r14 + rdx]
and rax, -1128038253
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
