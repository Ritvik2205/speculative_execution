.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor dil, 8
xor ax, -23364
test eax, 158941032
or dl, al
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
and rcx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rcx]
xor bl, al
or al, cl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
and rcx, 107
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
and rbx, 0b1111111111111 # instrumentation
and ax, word ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
btc word ptr [r14 + rax], 2
or al, -61
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
