.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
jmp .bb_0.1
.bb_0.1:
xor dil, 81
test dil, 46
and al, 49
and rdi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdi], cl
xor rcx, -2
or eax, ecx
or dl, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
or al, 24
and cl, dil
and rbx, 0b1111111111111 # instrumentation
or rdi, qword ptr [r14 + rbx]
test al, dl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
