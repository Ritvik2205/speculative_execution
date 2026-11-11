.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc rdx, rdx
cmovns cx, dx
and rax, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
bt qword ptr [r14 + rax], rbx
and rcx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rcx], bl
xor cl, sil
and rbx, 0b1111111111111 # instrumentation
and dil, byte ptr [r14 + rbx]
or bl, -54
test eax, 158941032
and cl, cl
or cl, dil
and bl, al
and rdx, 0b1111111111111 # instrumentation
xor rdi, qword ptr [r14 + rdx]
or sil, cl
or al, dl
not bl
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
or dil, dl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
