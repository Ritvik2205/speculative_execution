.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -59
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dl
xor bl, -27
and rsi, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rsi]
test sil, bl
test eax, 343548072
test dil, cl
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
or ax, 16560
test sil, 41
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
and cl, 79
xor dl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
