.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor edi, dword ptr [r14 + rcx]
test bl, dl
or dil, -71
or cl, 7
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rbx], 2
and rcx, 0b1111111111111 # instrumentation
xor rsi, qword ptr [r14 + rcx]
or bl, -62
or al, dil
and cx, -2
and rax, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rax]
xor dl, 34
and rsi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], -50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
