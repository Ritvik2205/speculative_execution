.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
test al, dil
xor bl, -88
and rdx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bt qword ptr [r14 + rdx], rcx
or bl, -62
or dl, -8
and rax, 0b1111111111111 # instrumentation
and cl, byte ptr [r14 + rax]
or bl, bl
or edi, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, edi
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], dil
and dil, dil
bt cx, si
and rdi, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdi]
xor dl, 8
or al, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
