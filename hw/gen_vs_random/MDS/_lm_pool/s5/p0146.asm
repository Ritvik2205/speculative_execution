.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdi], 97
xor dl, 40
and rax, -731384280
and bl, 68
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rsi, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rsi], bl
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
or rbx, -77
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and cl, -71
xor dl, -59
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
and al, 14
not dl
bt ax, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
