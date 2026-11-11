.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, bl
and rax, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rcx
or dl, cl
or dil, dl
xor dil, bl
btc eax, 40
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], dl
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -1593756837
or al, 24
bt ax, cx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or al, -24
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
and dx, 3
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
