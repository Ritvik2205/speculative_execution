.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or al, dl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
or cl, 7
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], sil
jmp .bb_0.3
.bb_0.3:
test dx, si
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], edx
not dl
jmp .bb_0.4
.bb_0.4:
lea di, qword ptr [rsi + rcx + 62]
test rdx, 37
jmp .bb_0.5
.bb_0.5:
or dl, dl
or ax, -20176
and rbx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rbx], 1662419990
or dl, -97
and rbx, 65
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
