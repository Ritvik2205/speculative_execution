.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or esi, ebx
or bl, 13
or al, -75
test bl, -114
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], al
and rdi, 0b1111111111111 # instrumentation
xor rcx, qword ptr [r14 + rdi]
or ax, -4210
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], bl
test ecx, -1843375753
or al, -61
xor bl, -61
xor rax, -773894210
or cl, -36
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
