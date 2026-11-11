.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 6
xor bl, sil
xor dl, bl
and rcx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rcx]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
and al, 87
and cl, bl
and rdx, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
jmp .bb_0.2
.bb_0.2:
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], dx
and sil, bl
not dl
xor dl, al
btc dx, 146
and rax, 0b1111111111111 # instrumentation
cmovp ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
