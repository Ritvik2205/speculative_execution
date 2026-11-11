.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc dil
add sil, 2
and rax, 0b1111111111000 # instrumentation
lock btc word ptr [r14 + rax], 6
test bl, -8
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], dil
mov bl, dl
lea ax, qword ptr [rcx]
and rcx, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rcx], di
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
