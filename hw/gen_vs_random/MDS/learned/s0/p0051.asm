.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rax
and si, -121
and rsi, 38
xor sil, al
bt ax, dx
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
or al, 24
xor sil, -15
xor rdi, -9
and rdx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
xor bl, 67
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
