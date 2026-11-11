.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
movsx eax, di
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
jmp .bb_0.1
.bb_0.1:
or bl, al
and rbx, 0b1111111111111 # instrumentation
imul ecx, dword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
jmp .bb_0.2
.bb_0.2:
test sil, 29
cmp ax, -4865
and si, 54
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
