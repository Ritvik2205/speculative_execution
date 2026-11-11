.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
or esi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], ebx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], bl
test al, 127
test bl, -114
and cl, cl
or al, 74
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], bx
jmp .bb_0.1
.bb_0.1:
xor cx, -18
bt ax, si
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and bx, 8
test al, sil
bts edx, 189
xor ax, -5889
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
