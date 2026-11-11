.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
btc dword ptr [r14 + rbx], ecx
not sil
bt bx, di
and rbx, 0b1111111111111 # instrumentation
and rax, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
test dword ptr [r14 + rax], 718371415
xor al, -26
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 58
test al, 91
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
xor dil, -124
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
xor dl, cl
and bx, 37
bts ax, 22
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
