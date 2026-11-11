.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdx], eax
btr ax, di
xor rdi, -9
or al, -17
not dil
and cl, -71
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and dl, bl
xor dil, -70
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rdx
xor dil, -3
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and rax, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rax], 1
or cl, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
