.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
and eax, 33
or ax, 30524
or al, 25
test dil, cl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rdx], 5
and rbx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rbx], al
xor al, -4
and dil, dil
and rdx, 0b1111111111111 # instrumentation
test word ptr [r14 + rdx], 26133
and rsi, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], cx
xor dl, 8
xor dl, -19
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
