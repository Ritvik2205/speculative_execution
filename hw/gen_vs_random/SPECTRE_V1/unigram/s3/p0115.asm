.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf edx, edi
and rdx, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rdx], bl
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], -53
add bl, 41 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
sub ax, word ptr [r14 + rax]
and ax, -21522
and rdx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rdx], -117
jb .bb_0.1
jmp .exit_0
.bb_0.1:
movsx bx, bl
cmovnbe rbx, rcx
add rdx, 100
test dx, 40
sub rax, -132886581
dec sil
cmovnl rdx, rax
cmovl rbx, rax
or edi, 0b1000000000000000000000000000000 # instrumentation
bsf eax, edi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
