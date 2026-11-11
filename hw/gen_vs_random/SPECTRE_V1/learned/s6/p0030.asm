.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or bl, 1 # instrumentation
mov ax, 1 # instrumentation
div bl
lea esi, qword ptr [rcx]
xchg rax, rdx
and al, dl
js .bb_0.1
jmp .exit_0
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], 69
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
add dl, bl
xchg rbx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
