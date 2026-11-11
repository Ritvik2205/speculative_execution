.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rax], 2
xor al, 34
and rcx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rcx], rbx
or sil, al
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dl
xor dl, -59
xor al, bl
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], sil
or sil, -78
and dil, dil
btc edx, 7
jmp .bb_0.1
.bb_0.1:
xor ax, -23364
and dil, cl
and dil, -62
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
