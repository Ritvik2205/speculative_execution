.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], bl
xor dl, bl
xor bl, dl
and dx, 60
or al, -22
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
or cl, al
not al
and rdi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdi], edx
or al, dl
xor sil, -15
test eax, -409834435
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
