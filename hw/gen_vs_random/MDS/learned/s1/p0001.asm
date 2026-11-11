.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and al, al
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], sil
test rsi, 43
and rbx, 0b1111111111111 # instrumentation
xor cl, byte ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or bl, dil
and bl, 68
jmp .bb_0.2
.bb_0.2:
and dl, al
xor rbx, 89
and ax, 19740
not dil
xor rdi, -9
xor al, 55
and rdx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rdx]
test al, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
