.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts edi, 248
and rdx, 0b1111111111000 # instrumentation
and si, 0b111 # instrumentation
lock btc word ptr [r14 + rdx], si
and al, cl
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rcx, 107
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rcx]
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
test bl, -9
xor al, 9
not cl
jmp .bb_0.3
.bb_0.3:
xor bl, -27
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], bl
and edx, -44
or rbx, -77
jmp .bb_0.4
.bb_0.4:
and al, sil
test bl, -14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
