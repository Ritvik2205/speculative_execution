.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rbx
and al, al
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
test bl, 65
and esi, 51
and rcx, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rax
xor al, 122
bt cx, dx
and rcx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock btr word ptr [r14 + rcx], dx
and rax, 0b1111111111111 # instrumentation
xor word ptr [r14 + rax], 37
not dl
xor al, cl
and rsi, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rsi]
test al, dl
and bx, 27
jmp .bb_0.1
.bb_0.1:
xor al, dl
xor cl, -13
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
