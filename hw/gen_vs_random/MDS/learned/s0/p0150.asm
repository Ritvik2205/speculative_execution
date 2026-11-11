.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
xor rsi, -117
or al, sil
xor cl, -13
and rcx, 0b1111111111111 # instrumentation
and ebx, 0b111 # instrumentation
bts dword ptr [r14 + rcx], ebx
and eax, -85386306
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rcx], 121
test sil, 41
test eax, -1634766116
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], bl
xor rcx, 71
test eax, 1287331633
or al, 30
test sil, -96
and rax, 1250429750
and eax, 366961170
bt cx, dx
test al, sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
