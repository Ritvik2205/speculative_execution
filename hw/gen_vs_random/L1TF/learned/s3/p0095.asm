.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add al, -60 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovl cx, word ptr [r14 + rdx]
test bl, -92
and sil, -90
btc ax, cx
xor dl, 9
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], bl
and rbx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rbx], 7
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdx], -49
sub al, cl
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
