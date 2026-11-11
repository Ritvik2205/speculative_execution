.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or eax, edx
xor sil, -15
btc ax, 51
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], bl
test eax, 1838539683
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rbx, 0b1111111111111 # instrumentation
test word ptr [r14 + rbx], si
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and bx, 69
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 4
bt si, bx
or al, 24
test al, dl
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], bl
and cl, 79
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dl
and si, -121
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
