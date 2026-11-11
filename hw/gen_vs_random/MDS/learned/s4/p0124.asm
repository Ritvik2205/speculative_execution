.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], edx
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], -337720409
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], bl
bt si, ax
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
or al, 16
or al, -22
and ecx, -104
or al, 25
and cx, -2
or al, dil
xor dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
