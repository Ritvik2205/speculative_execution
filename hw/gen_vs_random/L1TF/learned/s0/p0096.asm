.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, 65 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl ecx, dword ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rdx]
or al, cl
test rdi, rcx
xor sil, 64
and rcx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rcx], sil
cmp rcx, 32
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and sil, 37
and rdi, 0b1111111111111 # instrumentation
xor si, word ptr [r14 + rdi]
or ax, 11821
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
