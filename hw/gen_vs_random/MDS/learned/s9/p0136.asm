.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and si, -121
test al, 127
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], 31143
or sil, -49
test eax, 343548072
test cl, 101
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
and sil, dil
and rbx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdx], 1626470119
bt bx, si
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rdx, 95
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 739594338
and rdx, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], cx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
