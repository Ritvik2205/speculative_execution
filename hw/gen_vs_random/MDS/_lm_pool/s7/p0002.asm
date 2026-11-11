.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or al, bl
and rdi, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rdi], 7
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], dil
btr ax, cx
jmp .bb_0.1
.bb_0.1:
or dil, cl
jmp .bb_0.2
.bb_0.2:
and rdi, 0b1111111111111 # instrumentation
and ax, 0b111 # instrumentation
btr word ptr [r14 + rdi], ax
and rdi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btc word ptr [r14 + rdi], ax
xor al, bl
and rbx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bt qword ptr [r14 + rbx], rdx
or edx, -1
xor bl, dl
test eax, 158941032
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
