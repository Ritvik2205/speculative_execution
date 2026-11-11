.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rdx]
or al, dil
bts rdx, 200
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor sil, bl
and rdx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdx], 4
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
and al, -114
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
test cl, -113
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
