.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
btc dx, 67
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], cl
or al, -78
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 6
or cl, al
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bts word ptr [r14 + rbx], 6
jmp .bb_0.2
.bb_0.2:
or cl, bl
and edi, 23
or al, -22
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], eax
or dl, 85
test rcx, -613256812
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], 30
sub dl, 20
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
