.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, -61
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 2
or bl, 43
or dl, al
and ax, 19224
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
bt rbx, 241
or dl, dl
xor al, -26
and rax, 0b1111111111111 # instrumentation
btr qword ptr [r14 + rax], 0
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
bts word ptr [r14 + rax], cx
and rdx, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rdx]
or dl, -8
xor dl, 40
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
