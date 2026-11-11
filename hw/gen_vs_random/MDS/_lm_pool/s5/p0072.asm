.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rax], 55
xor rsi, -117
or dil, dil
and rcx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rcx], 5
jmp .bb_0.1
.bb_0.1:
xor dl, cl
and bl, 68
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], sil
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 1
and rcx, 107
jmp .bb_0.3
.bb_0.3:
and rsi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rsi], 91
and al, -114
test al, 127
not al
and ax, -122
or dil, -76
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
test ax, 6113
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
